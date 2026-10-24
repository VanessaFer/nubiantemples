# Database su Supabase: guida passo-passo

L'app legge **tutti** i dati direttamente dal database PostgreSQL ospitato su Supabase (nessun file Excel/CSV).
Se il database è in pausa l'app mostra un avviso: ripristinalo da Supabase (Restore project) e ricarica la pagina.

```
MySQL locale -> dump -> scripts/convert_mysql_dump.py -> database/postgres/*.sql
                                                              |  scripts/load_to_supabase.py
                                                              v
                                     Supabase (PostgreSQL)  <-  app Streamlit (db.py, viste v_*)
```

Vengono portate **tutte le 31 tabelle** del database `templi`. L'app usa tre viste
(`v_scene_overview`, `v_scene_characters`, `v_scene_bibliography`) che riproducono le tabelle
prima esportate in Excel.

## 0. Il dump MySQL (già fatto, da ripetere solo se i dati cambiano)

In `database/mysql/db_templi_2026-10-18.sql` c'è il dump del 18/10/2026, già convertito nei file
`database/postgres/01_schema.sql`, `02_data.sql`, `03_constraints.sql`.

Se in futuro modifichi il database MySQL, rifai l'export (MySQL Workbench -> **Server -> Data Export**,
schema `templi`, *Dump Structure and Data*, *Export to Self-Contained File*), salvalo in `database/mysql/` e riconverti:

```bash
python scripts/convert_mysql_dump.py database/mysql/NUOVO_DUMP.sql database/postgres
```

I file scritti a mano non vengono toccati: `04_views.sql` (le viste usate dall'app), `05_security.sql`
(blocca l'accesso pubblico via API) e `04a_temples_map.sql` (i dati della mappa dei templi) e `06_corrections.sql` (correzioni di testo fatte
dopo l'export: "human appearance" -> "human" e i doppi spazi). Se le correggi in MySQL,
puoi svuotare quel file.

## 1. Creare il progetto Supabase

1. Su supabase.com crea un account e un **New project**.
2. Scegli una regione europea (es. Frankfurt) e **annota la password** del database.
   Se contiene caratteri speciali (`@ : / # ?`) scegline una senza, oppure codificali nell'URL.
3. Aspetta che il progetto sia pronto, poi clicca **Connect** in alto.
4. Scegli **Session pooler** e copia la stringa, tipo:
   `postgresql://postgres.abcdefgh:[YOUR-PASSWORD]@aws-0-eu-central-1.pooler.supabase.com:5432/postgres`
   Sostituisci `[YOUR-PASSWORD]` con la tua password.

> Usa il *Session pooler* e non la *Direct connection*: quest'ultima funziona solo con IPv6 e
> Streamlit Cloud non la raggiunge.

## 2. Caricare il database

Dalla cartella della repo (serve Python con `pip install psycopg2-binary`):

```bash
# Mac / Linux
export DATABASE_URL="postgresql://postgres.abcdefgh:LA_TUA_PASSWORD@aws-0-eu-central-1.pooler.supabase.com:5432/postgres"
# Windows PowerShell
$env:DATABASE_URL = "postgresql://postgres.abcdefgh:LA_TUA_PASSWORD@aws-0-eu-central-1.pooler.supabase.com:5432/postgres"

python scripts/load_to_supabase.py
```

Alla fine deve scrivere `Fatto. Scene caricate: ...`. Lo script è in un'unica transazione
(se c'è un errore non cambia nulla) e si può rilanciare quando vuoi: ricrea le tabelle da zero.

**Verifica**: nell'app apri le pagine Database e Temples map e fai qualche ricerca.

## 3. Collegare l'app Streamlit

- **In locale**: in `.streamlit/secrets.toml` aggiungi

  ```toml
  [supabase]
  url = "postgresql://postgres.abcdefgh:LA_TUA_PASSWORD@aws-0-eu-central-1.pooler.supabase.com:5432/postgres"
  ```
- **Streamlit Cloud**: app -> Settings -> Secrets, incolla le stesse due righe e salva.

## 4. Evitare la pausa del piano gratuito

Supabase mette in pausa i progetti gratuiti dopo 1 settimana senza attività. La repo contiene
un workflow GitHub (`.github/workflows/keep-supabase-alive.yml`) che ogni 3 giorni fa una query.

1. Su GitHub: repo -> **Settings -> Secrets and variables -> Actions -> New repository secret**
2. Nome: `DATABASE_URL`, valore: la stessa stringa di connessione.
3. Vai su **Actions -> Keep Supabase alive -> Run workflow** per provarlo: deve diventare verde.

Attenzione: GitHub disattiva i workflow programmati nelle repo pubbliche senza attività per 60 giorni.
Se succede, basta riattivarlo da Actions (o fare un commit).

Se il progetto va comunque in pausa: Supabase -> **Restore project**. Finché è in pausa l'app mostra solo un avviso.
