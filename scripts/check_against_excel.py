"""Confronta le viste del database con gli Excel in data/tables/.

Serve a verificare che il database caricato sia aggiornato quanto gli Excel:
per ogni vista stampa quante righe coincidono e quante differiscono.

Uso:  DATABASE_URL=... python scripts/check_against_excel.py
"""
import os
import sys
from collections import Counter
from pathlib import Path

import pandas as pd
from sqlalchemy import create_engine

TABLES = Path(__file__).resolve().parent.parent / "data" / "tables"
PAIRS = {
    "v_scene_overview": "scena_stanze_registro_titolo.xlsx",
    "v_scene_characters": "SCENA_PERSONAGGIO.xlsx",
    "v_scene_bibliography": "SCENA_BIBLIOGRAFIA.xlsx",
}
url = os.environ.get("DATABASE_URL") or sys.exit("Manca DATABASE_URL")
engine = create_engine(url.replace("postgresql://", "postgresql+psycopg2://", 1))


def rows(df):
    def s(v):
        if pd.isna(v):
            return ""
        if isinstance(v, (int, float)) and float(v) == int(float(v)):
            return str(int(v))
        return str(v).replace("\xa0", " ").strip()
    return Counter(tuple(s(v) for v in r) for r in df.itertuples(index=False))


for view, xlsx in PAIRS.items():
    db = pd.read_sql(f'SELECT * FROM "{view}"', engine)
    xl = pd.read_excel(TABLES / xlsx)
    a, b = rows(db), rows(xl)
    only_db, only_xl = a - b, b - a
    ok = not only_db and not only_xl
    print(f"{view}: DB {len(db)} righe, Excel {len(xl)} righe -> {'IDENTICHE' if ok else 'DIFFERENZE'}")
    if not ok:
        print(f"   solo nel DB: {sum(only_db.values())} | solo negli Excel: {sum(only_xl.values())}")
        for r in list(only_xl)[:3]:
            print("   es. solo Excel:", r[:5])
        for r in list(only_db)[:3]:
            print("   es. solo DB   :", r[:5])
