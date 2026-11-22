"""Stile del sito: oro e turchese su fondo scuro, con font a inscrizione (Cinzel) per i titoli."""
import streamlit as st

GOLD = "#c99b38"
SAND = "#eddca5"
TURQUOISE = "#00b0be"

# Fascia decorativa a righe oro / turchese, come i bordi dipinti dei templi
BAND = (f"linear-gradient(to bottom, {GOLD} 0 2px, transparent 2px 4px, {TURQUOISE} 4px 6px, "
        f"transparent 6px 8px, {GOLD} 8px 10px)")

CSS = f"""
<style>
@import url('https://fonts.googleapis.com/css2?family=Cinzel:wght@500;700&display=swap');

h1, h2, h3, .nt-brand {{
    font-family: 'Cinzel', 'Palatino Linotype', Georgia, serif;
    letter-spacing: .03em;
}}
h1, h2 {{ color: {GOLD} !important; }}
h3 {{ color: {SAND} !important; }}
hr {{ border-color: rgba(201, 155, 56, .35) !important; }}

[data-testid="stMetricValue"] {{ color: {GOLD}; }}
[data-testid="stMetricLabel"] {{ color: {SAND}; }}

/* titolo del menù laterale */
.nt-brand {{
    color: {GOLD}; font-size: 1.3rem; font-weight: 700; text-align: center;
    padding: 6px 0 2px 0;
}}
.nt-sub {{
    color: {SAND}; font-size: .8rem; text-align: center; opacity: .8; padding-bottom: 10px;
}}
.nt-band {{ height: 10px; background: {BAND}; margin: 4px 0 14px 0; opacity: .9; }}
</style>
"""


def apply():
    """Inserisce lo stile nella pagina (da chiamare una volta all'inizio)."""
    st.markdown(CSS, unsafe_allow_html=True)


def sidebar_brand():
    """Titolo con fascia decorativa in cima al menù laterale."""
    st.sidebar.markdown(
        '<div class="nt-brand">☥ Nubian Temples</div>'
        '<div class="nt-sub">The submerged temples of Nubia</div>'
        '<div class="nt-band"></div>',
        unsafe_allow_html=True,
    )


MENU_STYLES = {
    "container": {"padding": "6px", "background-color": "#0b0d12",
                  "border": "1px solid rgba(201,155,56,.45)", "border-radius": "6px"},
    "menu-title": {"color": GOLD, "font-family": "Cinzel, 'Palatino Linotype', Georgia, serif",
                   "letter-spacing": ".15em", "text-transform": "uppercase", "font-size": "14px"},
    "menu-icon": {"color": GOLD},
    "icon": {"color": GOLD, "font-size": "18px"},
    "nav-link": {"color": SAND, "font-size": "15px", "text-align": "left", "margin": "2px 0",
                 "border-radius": "4px", "font-family": "Cinzel, 'Palatino Linotype', Georgia, serif",
                 "--hover-color": "#1d1a12"},
    "nav-link-selected": {"background-color": "#2a2415", "color": SAND, "font-weight": "700",
                          "border-left": f"3px solid {GOLD}"},
}
