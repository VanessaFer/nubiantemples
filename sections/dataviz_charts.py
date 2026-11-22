"""Grafici interattivi (Plotly) sui dati di Supabase.

La pagina ha quattro schede, una per criterio di ricerca: divinità, stanza, epiteto, corona.
In ognuna si sceglie un valore e tutti i grafici si adattano alla scelta.
Tema scuro con oro e turchese (colori dei gioielli egizi); i grafici si adattano allo schermo, anche da telefono.
"""
import pandas as pd
import plotly.express as px
import streamlit as st

from db import load_table

# Palette
GOLD = "#c99b38"       # evidenza: i valori più alti
TURQUOISE = "#00b0be"  # tutte le altre barre
SAND = "#eddca5"       # testo
LIGHT_TURQUOISE = "#8fd7d7"
BG = "rgba(0,0,0,0)"   # sfondo trasparente: usa quello del sito
TEXT = SAND
HIGHLIGHT = 2          # quante barre in evidenza (le più alte)
STACK_COLORS = {"god": GOLD, "goddess": SAND, "king": TURQUOISE, "other": LIGHT_TURQUOISE}

DEITY_TYPES = ["god", "goddess", "field god", "field goddess"]
PLACEHOLDERS = "destroyed|no inscriptions|incomplete|not able to transliterate"
ATTRIBUTES = {"Crown": "crown", "Clothes": "clothes", "Posture": "posture", "Aspect": "aspect",
              "Gift": "gift", "Giver or recipient": "giverRecipient", "Iconography of the scene": "iconography"}
CONFIG = {"displayModeBar": False}

_counter = [0]


# ----------------------------------------------------------------------------- utilità grafiche

def _key() -> str:
    _counter[0] += 1
    return f"dv_chart_{_counter[0]}"


def _style(fig, height=None):
    fig.update_layout(
        paper_bgcolor=BG, plot_bgcolor=BG, font=dict(color=TEXT, size=13),
        margin=dict(l=0, r=10, t=10, b=0), showlegend=False, height=height,
        yaxis=dict(title=None, automargin=True),
        xaxis=dict(title=None, gridcolor="#2a2d36", zeroline=False),
    )
    return fig


def _counts(series: pd.Series, top: int, order=None) -> pd.Series:
    s = series.dropna()
    s = s[s.astype(str).str.strip() != ""]
    c = s.value_counts()
    if order is not None:
        return c.reindex([o for o in order if o in c.index])
    return c.head(top)


def _bar(series: pd.Series, top: int = 10, order=None):
    """Barre orizzontali con il valore accanto. Senza `order` sono ordinate dalla più alta; con `order` segue quell'elenco."""
    c = _counts(series, top, order)
    if c.empty:
        st.caption("No data for this selection.")
        return
    c = c.iloc[::-1] if order is not None else c.sort_values()
    df = c.rename_axis("label").reset_index(name="count")
    best = set(df["count"].nlargest(HIGHLIGHT).index)
    colors = [GOLD if i in best else TURQUOISE for i in df.index]
    fig = px.bar(df, x="count", y="label", orientation="h", text="count")
    fig.update_traces(marker_color=colors, textposition="outside", cliponaxis=False,
                      hovertemplate="%{y}: %{x}<extra></extra>")
    st.plotly_chart(_style(fig, height=max(160, 26 * len(df) + 50)), width="stretch",
                    config=CONFIG, key=_key())


def _title(text: str):
    st.markdown(f"**{text}**")


def _merge_spellings(s: pd.Series) -> pd.Series:
    """Unisce le grafie che differiscono solo per maiuscole/spazi (es. 'Merur the Young' / 'Merur the young')."""
    s = s.astype("string").str.strip().str.replace(r"\s+", " ", regex=True)
    key = s.str.lower()
    best = s.groupby(key).agg(lambda x: x.value_counts().index[0])
    return key.map(best)


# ----------------------------------------------------------------------------- dati

@st.cache_data(ttl=3600, show_spinner=False)
def _prepare() -> dict:
    ch = load_table("v_characters").copy()
    name = (ch["name"].astype("string").str.strip().str.replace(r"\s+", " ", regex=True)
            .str.replace(r"\?+$", "", regex=True).str.strip())
    name = name.mask(name.isna() | (name == ""), "unidentified")
    ch["who"] = _merge_spellings(name).astype(object)
    ch["typology"] = ch["typology"].fillna("unknown")
    ch["crown"] = ch["crown"].where(~ch["crown"].astype("string").str.strip().isin(["", "-"]))
    ch["room"] = ch["room"].astype("string").str.strip().astype(object)
    ch["register"] = ch["register"].map(lambda r: f"Register {int(r)}" if pd.notna(r) else None)
    ch["is_deity"] = ch["typology"].isin(DEITY_TYPES) & (ch["who"] != "unidentified")
    ch["is_king"] = (ch["typology"] == "king") & (ch["who"] != "unidentified")

    scene_cols = ["codice_personaggio", "who", "typology", "room", "register", "orientation", "sceneAcronym"]
    ep = load_table("v_character_epithets").merge(ch[scene_cols], on="codice_personaggio", how="left")
    ep["translation"] = ep["translation"].fillna("").astype(str)
    text = (ep["epithet"].fillna("") + " " + ep["translation"]).str.lower()
    ep["placeholder"] = text.str.contains(PLACEHOLDERS, regex=True)

    acc = load_table("v_deity_accessories")[["codice_personaggio", "accessory"]]
    bib = load_table("v_deity_epithets")[["epithet", "epithetBibliographyBook", "epithetBibliographyAuthor",
                                          "epithetBibliographyYear", "epithetBibliographyVolume",
                                          "epithetBibliographyPage"]].dropna(subset=["epithet"])
    scenes = load_table("v_scene_overview")
    return {"ch": ch, "ep": ep, "acc": acc, "bib": bib, "scenes": scenes}


def _ordered_registers(series: pd.Series) -> list:
    return sorted(series.dropna().unique(), key=lambda r: int(str(r).split()[-1]))


# ----------------------------------------------------------------------------- blocchi riusabili

def _where_block(sel: pd.DataFrame, rooms: bool = True):
    """Dove compaiono: ambienti, registri, lato della parete."""
    if rooms:
        c1, c2 = st.columns(2)
        with c1:
            _title("In which rooms")
            _bar(sel["room"], 8)
        with c2:
            _title("On which register")
            _bar(sel["register"], order=_ordered_registers(sel["register"]))
    else:
        _title("On which register")
        _bar(sel["register"], order=_ordered_registers(sel["register"]))
    _title("On which wall or part of the temple")
    _bar(sel["orientation"], 10)


def _attribute_block(sel: pd.DataFrame, key: str):
    _title("Look at an attribute")
    label = st.selectbox("Attribute", list(ATTRIBUTES), key=f"{key}_attr")
    col = sel[ATTRIBUTES[label]]
    col = col[~col.astype("string").str.strip().isin(["", "-"])]
    top = st.slider("How many values", 5, 25, 10, key=f"{key}_attr_top")
    _bar(col, top)


def _accessories_block(sel: pd.DataFrame, acc: pd.DataFrame):
    _title("Accessories")
    a = acc[acc["codice_personaggio"].isin(sel["codice_personaggio"])]["accessory"]
    _bar(a, 12)


def _epithet_bars(ep: pd.DataFrame, key: str, top_n: int = 15):
    """Epiteti più frequenti (barre) + elenco con traduzione."""
    if ep.empty:
        st.caption("No epithets recorded for this selection.")
        return
    use_tr = st.toggle("Show the translation on the bars", value=True, key=f"{key}_tr")
    grp = ep.groupby(["epithet", "translation"]).size().reset_index(name="times")
    label = grp["translation"].where(use_tr & (grp["translation"] != ""), grp["epithet"])
    dup = label.duplicated(keep=False)
    grp["label"] = label.where(~dup, label + " (" + grp["epithet"] + ")").str.slice(0, 52)
    top = grp.sort_values("times", ascending=False).head(top_n).sort_values("times")
    fig = px.bar(top, x="times", y="label", orientation="h", text="times",
                 hover_data={"epithet": True, "translation": True, "label": False, "times": True})
    best = set(top["times"].nlargest(HIGHLIGHT).index)
    fig.update_traces(marker_color=[GOLD if i in best else TURQUOISE for i in top.index],
                      textposition="outside", cliponaxis=False)
    st.plotly_chart(_style(fig, height=max(160, 26 * len(top) + 50)), width="stretch",
                    config=CONFIG, key=_key())
    table = grp.sort_values("times", ascending=False)[["epithet", "translation", "times"]]
    table.columns = ["Epithet", "Translation", "Times"]
    with st.expander(f"Full list ({len(table)} epithets)"):
        st.dataframe(table, hide_index=True, width="stretch")


def _metrics(items: list):
    cols = st.columns(len(items))
    for col, (label, value) in zip(cols, items):
        col.metric(label, value)


# ----------------------------------------------------------------------------- scheda 1: divinità

def _deity_tab(d: dict):
    ch, ep, acc = d["ch"], d["ep"], d["acc"]
    names = ch.loc[ch["who"] != "unidentified", "who"].value_counts().index.tolist()
    who = st.selectbox("Deity or character", ["All characters"] + names, key="d_pick")
    sel = ch if who == "All characters" else ch[ch["who"] == who]
    ep_sel = ep[~ep["placeholder"] & ep["codice_personaggio"].isin(sel["codice_personaggio"])]

    if who == "All characters":
        _title("Who is depicted")
        f1, f2 = st.columns(2)
        aspect = f1.selectbox("Aspect", ["All aspects"] + ch["aspect"].dropna().value_counts().index.tolist(),
                              key="d_aspect")
        room = f2.selectbox("Room of the temple", ["All rooms"] + ch["room"].dropna().value_counts().index.tolist(),
                            key="d_room")
        shown = ch
        if aspect != "All aspects":
            shown = shown[shown["aspect"] == aspect]
        if room != "All rooms":
            shown = shown[shown["room"] == room]
        if shown.empty:
            st.info("No characters for this combination.")
        else:
            st.caption(f"{len(shown)} characters shown")
            _bar(shown["typology"], 10)
            _title("The most frequent characters")
            st.caption("The filters above apply here too.")
            n = st.slider("How many characters to show", 5, 25, 10, key="d_top")
            _bar(shown["who"], n)
    else:
        types = ", ".join(sorted(sel["typology"].unique()))
        _metrics([("Appearances", len(sel)), ("Scenes", sel["sceneAcronym"].nunique()),
                  ("Rooms", sel["room"].nunique()), ("Epithets", len(ep_sel))])
        st.caption(f"Type: {types}")

    st.divider()
    _where_block(sel)
    st.divider()
    _attribute_block(sel, "d")
    st.divider()
    _accessories_block(sel, acc)
    st.divider()
    _title("Epithets")
    _epithet_bars(ep_sel, "d")


# ----------------------------------------------------------------------------- scheda 2: stanza

def _room_tab(d: dict):
    ch, ep, acc, scenes = d["ch"], d["ep"], d["acc"], d["scenes"]
    rooms = ch["room"].dropna().value_counts().index.tolist()
    room = st.selectbox("Room of the temple", rooms, key="r_pick")
    sel = ch[ch["room"] == room]
    ep_sel = ep[~ep["placeholder"] & ep["codice_personaggio"].isin(sel["codice_personaggio"])]

    _metrics([("Scenes", sel["sceneAcronym"].nunique()), ("Characters", len(sel)),
              ("Deities", sel.loc[sel["is_deity"], "who"].nunique()),
              ("Kings", sel.loc[sel["is_king"], "who"].nunique())])

    _title("Who is depicted")
    _bar(sel["typology"], 10)
    _title("Which characters")
    n = st.slider("How many characters to show", 5, 25, 10, key="r_top")
    _bar(sel["who"], n)

    st.divider()
    _where_block(sel, rooms=False)
    st.divider()
    _attribute_block(sel, "r")
    st.divider()
    _accessories_block(sel, acc)
    st.divider()
    _title("Epithets in this room")
    _epithet_bars(ep_sel, "r")

    st.divider()
    _title("Scenes in this room")
    table = scenes[scenes["room"] == room][["sceneAcronym", "orientation", "register", "roomPart",
                                             "sceneTitle", "iconography", "charactersNumber"]].copy()
    table.columns = ["Scene", "Wall", "Register", "Part", "Title", "Iconography", "Characters"]
    st.dataframe(table, hide_index=True, width="stretch")


# ----------------------------------------------------------------------------- scheda 3: epiteto

def _epithet_tab(d: dict):
    ep, bib = d["ep"], d["bib"]
    hide = st.checkbox("Hide incomplete entries (destroyed, no inscriptions, not transliterated)",
                       value=True, key="e_hide")
    e = ep[~ep["placeholder"]] if hide else ep
    q = st.text_input("Search by translation or transliteration", placeholder="e.g. lord of Kalabsha", key="e_q")
    pool = e
    if q.strip():
        t = (e["epithet"].fillna("") + " " + e["translation"]).str.lower()
        pool = e[t.str.contains(q.strip().lower(), regex=False)]
    freq = pool.groupby(["epithet", "translation"]).size().sort_values(ascending=False)
    labels = {}
    for (epi, tr), n in freq.items():
        labels[f"{tr} — {epi} ({n})" if tr else f"{epi} ({n})"] = (epi, tr)
    if not labels:
        st.info("No epithet matches your search.")
        return
    choice = st.selectbox("Epithet", ["All epithets"] + list(labels), key="e_pick")

    if choice == "All epithets":
        _metrics([("Epithets recorded", len(pool)), ("Different epithets", len(freq))])
        _title("Most frequent epithets")
        _epithet_bars(pool, "e")
        return

    epi, tr = labels[choice]
    sel = e[(e["epithet"] == epi) & (e["translation"] == tr)]
    _metrics([("Occurrences", len(sel)), ("Characters", sel["who"].nunique()),
              ("Scenes", sel["sceneAcronym"].nunique()), ("Rooms", sel["room"].nunique())])
    st.markdown(f"**{epi}**" + (f" — *{tr}*" if tr else ""))

    _title("Which characters carry it")
    _bar(sel["who"], 10)
    c1, c2 = st.columns(2)
    with c1:
        _title("In which rooms")
        _bar(sel["room"], 8)
    with c2:
        _title("On which register")
        _bar(sel["register"], order=_ordered_registers(sel["register"]))

    _title("Where it is attested")
    att = sel[["sceneAcronym", "who", "room", "orientation", "register"]].drop_duplicates()
    att.columns = ["Scene", "Character", "Room", "Wall", "Register"]
    st.dataframe(att, hide_index=True, width="stretch")

    _title("Bibliography")
    b = bib[bib["epithet"] == epi].drop(columns="epithet").dropna(how="all").drop_duplicates()
    if b.empty:
        st.caption("No bibliographic reference recorded for this epithet.")
    else:
        b.columns = ["Book", "Author", "Year", "Volume", "Page"]
        for col in ("Year", "Page"):
            b[col] = pd.to_numeric(b[col], errors="coerce").astype("Int64").astype("string")
        st.dataframe(b, hide_index=True, width="stretch")


# ----------------------------------------------------------------------------- scheda 4: corona

def _crown_tab(d: dict):
    ch = d["ch"]
    crowns = ch["crown"].dropna()
    order = crowns.value_counts().index.tolist()
    choice = st.selectbox("Crown", ["All crowns"] + order, key="c_pick")

    if choice == "All crowns":
        _metrics([("Different crowns", len(order)), ("Characters with a crown", len(crowns))])
        _title("Crowns and who wears them")
        top = order[:12]
        df = ch[ch["crown"].isin(top)].copy()
        df["group"] = df["typology"].where(df["typology"].isin(["god", "goddess", "king"]), "other")
        g = df.groupby(["crown", "group"]).size().reset_index(name="n")
        fig = px.bar(g, x="n", y="crown", color="group", orientation="h", color_discrete_map=STACK_COLORS,
                     category_orders={"crown": top, "group": ["god", "goddess", "king", "other"]})
        fig.update_layout(paper_bgcolor=BG, plot_bgcolor=BG, font=dict(color=TEXT, size=13),
                          margin=dict(l=0, r=10, t=10, b=0), height=max(200, 30 * len(top) + 80),
                          yaxis=dict(title=None, automargin=True),
                          xaxis=dict(title=None, gridcolor="#2a2d36", zeroline=False),
                          legend=dict(title=None, orientation="h", y=-0.08))
        st.plotly_chart(fig, width="stretch", config=CONFIG, key=_key())
        st.caption("Pick a crown above to see who wears it, where and on which register.")
        return

    sel = ch[ch["crown"] == choice]
    _metrics([("Characters", len(sel)), ("Different characters", sel["who"].nunique()),
              ("Scenes", sel["sceneAcronym"].nunique()), ("Rooms", sel["room"].nunique())])
    desc = [x for x in sel["crownDescription"].dropna().unique() if str(x).strip()]
    if desc:
        st.caption(" · ".join(str(x) for x in desc[:2]))

    _title("Who wears it")
    _bar(sel["typology"], 10)
    _title("Which characters")
    _bar(sel["who"], 12)
    st.divider()
    _where_block(sel)


# ----------------------------------------------------------------------------- pagina

def app():
    _counter[0] = 0
    d = _prepare()
    ch = d["ch"]

    st.caption("Choose how you want to explore the temple: each tab starts from a different question. "
               "Hover over the bars to read the exact values; all data come from the project database.")

    _metrics([("Deities", ch.loc[ch["is_deity"], "who"].nunique()),
              ("Kings", ch.loc[ch["is_king"], "who"].nunique()),
              ("Scenes", ch["sceneAcronym"].nunique()),
              ("Rooms", ch["room"].nunique())])

    t_deity, t_room, t_epithet, t_crown = st.tabs(["By deity", "By room", "By epithet", "By crown"])
    with t_deity:
        _deity_tab(d)
    with t_room:
        _room_tab(d)
    with t_epithet:
        _epithet_tab(d)
    with t_crown:
        _crown_tab(d)
