"""Fa una piccola query al database per evitare che Supabase (piano gratuito)
metta il progetto in pausa dopo una settimana di inattività."""
import os
import sys

import psycopg2

url = os.environ.get("DATABASE_URL")
if not url:
    sys.exit("DATABASE_URL non impostata")
with psycopg2.connect(url, connect_timeout=30) as conn, conn.cursor() as cur:
    cur.execute("SELECT count(*) FROM tempio")
    print("Database attivo. Templi:", cur.fetchone()[0])
