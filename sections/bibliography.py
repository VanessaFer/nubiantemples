import io

import pandas as pd
import plotly.express as px
import streamlit as st

from db import load_table
from style import GOLD, SAND, TURQUOISE


def _decade_chart(df: pd.DataFrame):
    """Quante pubblicazioni per decennio."""
    years = pd.to_numeric(df["Year"], errors="coerce").dropna().astype(int)
    if years.empty:
        return
    per_decade = (years // 10 * 10).value_counts().sort_index()
    data = pd.DataFrame({"decade": per_decade.index.astype(str) + "s", "n": per_decade.values})
    best = set(data["n"].nlargest(2).index)
    fig = px.bar(data, x="decade", y="n", text="n")
    fig.update_traces(marker_color=[GOLD if i in best else TURQUOISE for i in data.index],
                      textposition="outside", cliponaxis=False, hovertemplate="%{x}: %{y}<extra></extra>")
    fig.update_layout(paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="rgba(0,0,0,0)", showlegend=False,
                      font=dict(color=SAND, size=12), margin=dict(l=0, r=0, t=10, b=0), height=260,
                      xaxis=dict(title=None, type="category", tickangle=-45),
                      yaxis=dict(title=None, gridcolor="#2a2d36", zeroline=False))
    st.plotly_chart(fig, width="stretch", config={"displayModeBar": False})


def app():
    st.title("Bibliography")
    st.header("The temple of Kalabsha")
    st.html("""Here you can find the bibliography of the temple of Kalabsha that I used for my MA thesis.<br>
               It is highly possible that it is not complete, therefore it would be great if you have
               any suggestion in order to enrich it (you can find my contacts in the Contacts page).
               <br>This could be a good starting point, though.""")

    raw = load_table("v_temple_bibliography")
    temples = raw["temple"].dropna().unique().tolist()
    temple = st.selectbox("Select the temple", temples) if len(temples) > 1 else (temples[0] if temples else None)
    df = raw[raw["temple"] == temple].drop(columns="temple").copy()
    df.columns = ["Author", "Title", "Publication", "Volume", "Year", "Place", "Pages"]
    df["Year"] = pd.to_numeric(df["Year"], errors="coerce").astype("Int64")

    years = df["Year"].dropna()
    c1, c2, c3 = st.columns(3)
    c1.metric("References", len(df))
    c2.metric("Authors", df["Author"].nunique())
    c3.metric("Years covered", f"{years.min()}–{years.max()}" if not years.empty else "–")

    st.subheader("Publications over time")
    _decade_chart(df)

    st.subheader("Search the bibliography")
    q = st.text_input("Search by author, title, publication or place", placeholder="e.g. Gauthier, Kalabsha, Cairo")
    lo, hi = (int(years.min()), int(years.max())) if not years.empty else (0, 0)
    if hi > lo:
        lo, hi = st.slider("Year of publication", int(years.min()), int(years.max()), (lo, hi))
    order = st.radio("Sort by", ["Author (A–Z)", "Year (oldest first)", "Year (newest first)"], horizontal=True)

    shown = df
    if q.strip():
        text = shown[["Author", "Title", "Publication", "Place"]].fillna("").agg(" ".join, axis=1).str.lower()
        shown = shown[text.str.contains(q.strip().lower(), regex=False)]
    if not years.empty:
        shown = shown[shown["Year"].isna() | shown["Year"].between(lo, hi)]
    if order == "Author (A–Z)":
        shown = shown.sort_values(["Author", "Year"], na_position="last")
    else:
        shown = shown.sort_values(["Year", "Author"], ascending=[order.startswith("Year (old"), True],
                                  na_position="last")

    st.caption(f"{len(shown)} of {len(df)} references")
    table = shown.assign(Year=shown["Year"].astype("string")).astype(object)
    table = table.where(table.notna(), "")
    st.dataframe(table, hide_index=True, width="stretch")

    buffer = io.BytesIO()
    with pd.ExcelWriter(buffer, engine="xlsxwriter") as writer:
        shown.to_excel(writer, sheet_name=f"{temple}_biblio", index=False)
    st.download_button(label="Download table as Excel file", data=buffer.getvalue(),
                       file_name=f"{str(temple).lower()}_biblio.xlsx",
                       mime="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
