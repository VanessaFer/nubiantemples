"""Accesso al database Supabase (PostgreSQL).

Tutti i dati mostrati dall'app arrivano da qui: le tabelle sono viste/tabelle del database
(vedi database/postgres/04_views.sql). La stringa di connessione sta solo nei Secrets
di Streamlit (sezione [supabase], chiave url), mai nel codice.
"""
import pandas as pd
import streamlit as st
from sqlalchemy import create_engine, text


@st.cache_resource
def _engine():
    url = st.secrets["supabase"]["url"]
    if url.startswith("postgresql://"):
        url = url.replace("postgresql://", "postgresql+psycopg2://", 1)
    return create_engine(url, pool_pre_ping=True, connect_args={"connect_timeout": 10})


@st.cache_data(ttl=3600, show_spinner=False)
def _query(name: str) -> pd.DataFrame:
    with _engine().connect() as conn:
        return pd.read_sql(text(f'SELECT * FROM "{name}"'), conn)


def _safe(msg: str) -> str:
    """Toglie dal messaggio d'errore la stringa di connessione (e quindi la password)."""
    try:
        url = st.secrets["supabase"]["url"]
        for part in (url, url.split("@")[0], url.split(":")[2].split("@")[0] if url.count(":") > 2 else ""):
            if part:
                msg = msg.replace(part, "***")
    except Exception:
        pass
    return msg


def load_table(name: str) -> pd.DataFrame:
    """Legge una vista/tabella del database. Se il database non risponde mostra un avviso e ferma la pagina."""
    try:
        return _query(name)
    except Exception as e:
        st.error(
            "The database is not reachable right now (it may be waking up). "
            "Please reload the page in a minute."
        )
        st.caption(f"Technical detail: {type(e).__name__}: {_safe(str(e))[:400]}")
        try:
            st.caption(f"Secret sections found: {list(st.secrets.keys())}")
        except Exception:
            pass
        st.stop()
