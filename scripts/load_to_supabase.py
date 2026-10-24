"""Carica il database `templi` su PostgreSQL / Supabase.

Esegue in ordine i file di database/postgres/ (01 ... 05) in un'unica transazione:
se qualcosa va storto, non viene modificato niente.

Uso:
    export DATABASE_URL="postgresql://postgres.xxxx:PASSWORD@aws-0-eu-xxx.pooler.supabase.com:5432/postgres"
    python scripts/load_to_supabase.py

(su Windows PowerShell:  $env:DATABASE_URL = "postgresql://..." )
ATTENZIONE: ricrea da zero le tabelle del progetto (DROP + CREATE).
"""
import os
import sys
from pathlib import Path

import psycopg2

SQL_DIR = Path(__file__).resolve().parent.parent / "database" / "postgres"
url = os.environ.get("DATABASE_URL")
if not url:
    sys.exit("Manca la variabile d'ambiente DATABASE_URL (vedi docs/supabase_setup.md).")

files = sorted(SQL_DIR.glob("0*.sql"))
conn = psycopg2.connect(url)
try:
    with conn, conn.cursor() as cur:
        for f in files:
            print(f"-> {f.name}")
            cur.execute(f.read_text(encoding="utf-8"))
        cur.execute("SELECT count(*) FROM scena")
        print("Fatto. Scene caricate:", cur.fetchone()[0])
finally:
    conn.close()
