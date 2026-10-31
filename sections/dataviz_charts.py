"""Grafici interattivi (Plotly) sui dati di Supabase: alternativa alla dashboard Tableau.

Tema scuro con toni oro/ocra, coerente con il sito; i grafici si adattano alla larghezza dello schermo
(anche da telefono) e si aggiornano da soli quando cambia il database.
"""
import pandas as pd
import plotly.express as px
import streamlit as st

from db import load_table

# Palette: oro e turchese (colori dei gioielli egizi) su sfondo scuro
GOLD = "#c99b38"      # evidenza: i valori più alti
TURQUOISE = "#00b0be" # tutte le altre barre
SAND = "#eddca5"      # testo
BG = "rgba(0,0,0,0)"  # sfondo trasparente: usa quello del sito
TEXT = SAND
HIGHLIGHT = 2         # quante barre in evidenza (le più alte)


def _style(fig, height=None):
    fig.update_layout(
        paper_bgcolor=BG, plot_bgcolor=BG, font=dict(color=TEXT, size=13),
        margin=dict(l=0, r=10, t=10, b=0), showlegend=False, height=height,
        yaxis=dict(title=None, automargin=True), xaxis=dict(title=None, gridcolor="#2a2d36", zeroline=False),
    )
    return fig


def _bar(series: pd.Series, top: int, height_per_bar: int = 26):
    """Barre orizzontali ordinate, con il valore accanto alla barra."""
    s = series.value_counts().head(top).sort_values()
    df = s.rename_axis("label").reset_index(name="count")
    fig = px.bar(df, x="count", y="label", orientation="h", text="count")
    colors = [GOLD if i >= len(df) - HIGHLIGHT else TURQUOISE for i in range(len(df))]
    fig.update_traces(marker_color=colors, textposition="outside", cliponaxis=False,
                      hovertemplate="%{y}: %{x}<extra></extra>")
    return _style(fig, height=max(180, height_per_bar * len(df) + 40))


def _merge_spellings(s: pd.Series) -> pd.Series:
    """Unisce le grafie che differiscono solo per maiuscole/spazi (es. 'Merur the Young' / 'Merur the young')."""
    s = s.astype("string").str.strip().str.replace(r"\s+", " ", regex=True)
    key = s.str.lower()
    best = s.groupby(key).agg(lambda x: x.value_counts().index[0])
    return key.map(best)


def _epithets_section():
    st.subheader("Epithets")
    st.write("Pick a deity and/or a room of the temple to see which epithets accompany it.")
    ep = load_table("v_epithets").copy()
    ep["deityName"] = _merge_spellings(ep["deityName"].replace("?", "unidentified"))
    ep["room"] = ep["room"].astype("string").str.strip()
    ep["translation"] = ep["translation"].fillna("").astype(str)

    hide = st.checkbox("Hide incomplete entries (destroyed, no inscriptions, not transliterated)", value=True)
    if hide:
        text = (ep["epithet"].fillna("") + " " + ep["translation"]).str.lower()
        missing = text.str.contains("destroyed|no inscriptions|incomplete|not able to transliterate", regex=True)
        ep = ep[~missing]

    deity_order = ep["deityName"].value_counts().index.tolist()
    room_order = ep["room"].value_counts().index.tolist()
    c1, c2 = st.columns(2)
    deity = c1.selectbox("Deity", ["All deities"] + deity_order)
    room = c2.selectbox("Room of the temple", ["All rooms"] + room_order)

    sel = ep
    if deity != "All deities":
        sel = sel[sel["deityName"] == deity]
    if room != "All rooms":
        sel = sel[sel["room"] == room]
    if sel.empty:
        st.info("No epithets for this combination.")
        return

    m1, m2 = st.columns(2)
    m1.metric("Epithets recorded", len(sel))
    m2.metric("Different epithets", sel["epithet"].nunique())

    st.markdown("**Most frequent epithets**")
    use_tr = st.toggle("Show the translation on the bars", value=True)
    grp = sel.groupby(["epithet", "translation"]).size().reset_index(name="times")
    grp["label"] = grp["translation"].where(use_tr & (grp["translation"] != ""), grp["epithet"])
    top = grp.sort_values("times", ascending=False).head(15).sort_values("times")
    top = top.assign(label=top["label"].str.slice(0, 48))
    fig = px.bar(top, x="times", y="label", orientation="h", text="times",
                 hover_data={"epithet": True, "translation": True, "label": False, "times": True})
    colors = [GOLD if i >= len(top) - HIGHLIGHT else TURQUOISE for i in range(len(top))]
    fig.update_traces(marker_color=colors, textposition="outside", cliponaxis=False)
    st.plotly_chart(_style(fig, height=max(200, 26 * len(top) + 40)), width="stretch",
                    config={"displayModeBar": False})

    # distribuzione: per ambiente (filtrata sulla divinità) e per divinità (filtrata sull'ambiente)
    by_room = ep if deity == "All deities" else ep[ep["deityName"] == deity]
    by_deity = ep if room == "All rooms" else ep[ep["room"] == room]
    st.markdown("**In which rooms**" + ("" if deity == "All deities" else f" ({deity})"))
    st.plotly_chart(_bar(by_room["room"].dropna(), 8), width="stretch", config={"displayModeBar": False})
    st.markdown("**Which deities**" + ("" if room == "All rooms" else f" ({room})"))
    st.plotly_chart(_bar(by_deity["deityName"].dropna(), 10), width="stretch", config={"displayModeBar": False})

    st.markdown("**Epithet list**")
    table = grp.sort_values("times", ascending=False)[["epithet", "translation", "times"]]
    table.columns = ["Epithet", "Translation", "Times"]
    st.dataframe(table, hide_index=True, width="stretch")

    st.markdown("**Where it is attested (bibliography)**")
    chosen = st.selectbox("Choose an epithet", table["Epithet"].tolist())
    bib = load_table("v_deity_epithets")
    bib = bib[bib["epithet"] == chosen][["epithetBibliographyBook", "epithetBibliographyAuthor",
                                         "epithetBibliographyYear", "epithetBibliographyVolume",
                                         "epithetBibliographyPage"]].dropna(how="all").drop_duplicates()
    if bib.empty:
        st.caption("No bibliographic reference recorded for this epithet.")
    else:
        bib.columns = ["Book", "Author", "Year", "Volume", "Page"]
        bib["Year"] = bib["Year"].astype("Int64").astype("string")
        bib["Page"] = bib["Page"].astype("Int64").astype("string")
        st.dataframe(bib, hide_index=True, width="stretch")


def app():
    deities = load_table("v_deity")
    accessories = load_table("v_deity_accessories")

    st.caption("Hover over the bars to read the exact values. "
               "The data come directly from the project database.")

    # --- indicatori ---
    n_char = len(deities)
    n_scenes = deities["sceneAcronym"].nunique()
    humans = (deities["aspect"] == "human").sum()
    c1, c2, c3 = st.columns(3)
    c1.metric("Characters", n_char)
    c2.metric("Scenes", n_scenes)
    c3.metric("Human appearance", f"{humans / n_char:.0%}")

    # --- tipologia + postura ---
    st.subheader("Who is depicted")
    kind = deities["typology"].fillna("unknown")
    fig = _bar(kind, 10)
    st.plotly_chart(fig, width="stretch", config={"displayModeBar": False})

    st.subheader("The most frequent characters")
    n = st.slider("How many characters to show", 5, 25, 10)
    names = _merge_spellings(deities["deityName"].replace("?", "unidentified"))
    st.plotly_chart(_bar(names, n), width="stretch", config={"displayModeBar": False})

    # --- scelta interattiva dell'attributo ---
    st.subheader("Look at an attribute")
    options = {"Crown": "crown", "Clothes": "clothes", "Posture": "seatedStanding",
               "Aspect": "aspect", "Gift": "deityGift", "Iconography": "iconography"}
    label = st.selectbox("Attribute", list(options))
    only = st.multiselect("Limit to", sorted(kind.unique()), default=[],
                          placeholder="All characters")
    data = deities[kind.isin(only)] if only else deities
    col = data[options[label]].dropna()
    col = col[col.astype(str).str.strip().isin(["", "-"]) == False]
    top = st.slider("How many values", 5, 25, 12, key="top_attr")
    st.plotly_chart(_bar(col, top), width="stretch", config={"displayModeBar": False})

    st.subheader("Accessories")
    st.plotly_chart(_bar(accessories["accessory"].dropna(), 12), width="stretch",
                    config={"displayModeBar": False})

    st.divider()
    _epithets_section()
