"""Accesso ai dati dell'app.

Prima prova a leggere dal database (Supabase/PostgreSQL, configurato nei Secrets).
Se il database non è raggiungibile (in pausa, secrets mancanti, ecc.) ripiega
sui file in data/tables/, così l'app resta utilizzabile.
"""
import pandas as pd
import streamlit as st
from sqlalchemy import create_engine, text

from config import TABLES_DIR

# tabella del database -> file di riserva
FALLBACK_FILES = {
    "v_scene_overview": "scena_stanze_registro_titolo.xlsx",
    "v_scene_characters": "SCENA_PERSONAGGIO.xlsx",
    "v_scene_bibliography": "SCENA_BIBLIOGRAFIA.xlsx",
}


@st.cache_resource
def _engine():
    url = st.secrets["supabase"]["url"]
    if url.startswith("postgresql://"):
        url = url.replace("postgresql://", "postgresql+psycopg2://", 1)
    return create_engine(url, pool_pre_ping=True, connect_args={"connect_timeout": 10})


@st.cache_data(ttl=3600, show_spinner=False)
def _query_database(view: str) -> pd.DataFrame:
    # le eccezioni non vengono messe in cache: al tentativo successivo riprova
    with _engine().connect() as conn:
        return pd.read_sql(text(f'SELECT * FROM "{view}"'), conn)


def load_table(view: str) -> pd.DataFrame:
    """Restituisce la tabella richiesta come DataFrame."""
    try:
        return _query_database(view)
    except Exception:
        st.session_state["data_source"] = "offline"
        return pd.read_excel(TABLES_DIR / FALLBACK_FILES[view])
