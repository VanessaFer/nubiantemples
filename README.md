# 🏛️ The Submerged Temples of Nubia – Interactive Web App

Personal research project on the Nubian temples relocated after the UNESCO campaign (1960s),
based on the studies of Henri Gauthier, Aylward M. Blackman and Günther Röder.

> 🚧 **Work in progress** – the database currently contains the data of the Temple of Kalabsha.

## Sections of the app

| Section | What it does | Code |
|---|---|---|
| Home | Project presentation | `sections/home.py` |
| History | From the first Aswan Dam to the UNESCO campaign | `sections/history.py` |
| Map | Interactive Folium map of the temples' original locations, filterable by period | `sections/temples_map.py` |
| Machine Learning Project | "Predict the god": classifier on the iconography of four deities of Kalabsha | `sections/ml_project.py` |
| Database | 139 offering scenes of the Temple of Kalabsha, with Gauthier's plates | `sections/database.py` |
| Data Visualisation | Embedded Tableau dashboards on deities and kings | `sections/data_visualisation.py` |
| Contacts | Contact information | `sections/contacts.py` |

## Repository structure

```
nubiantemples/
├── main.py                  # entry point (Streamlit): sidebar menu + routing
├── config.py                # centralised paths (ASSETS_DIR, IMAGES_DIR, ...)
├── db.py                    # data access: every query goes to Supabase
├── requirements.txt
├── sections/                # one module per page of the app
├── database/
│   ├── mysql/               # MySQL dump
│   └── postgres/            # PostgreSQL version (01_schema ... 06_corrections, views, map table)
├── scripts/                 # convert_mysql_dump.py, load_to_supabase.py, keep_alive.py
├── models/                  # trained model (kalabsha_gods.pkl)
├── assets/
│   ├── images/              # temples, deities, diagrams, references, branding
│   └── plates/              # Gauthier's plates (Tav. *.jpg)
├── docs/                    # presentation material, ER schema
├── legacy/                  # old / unused scripts kept for reference
├── .github/workflows/       # keeps the free Supabase project from pausing
└── .streamlit/              # secrets template (never commit secrets.toml)
```

## Run it locally

```bash
python -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
streamlit run main.py
```

Copy `.streamlit/secrets.toml.example` to `.streamlit/secrets.toml` to set the database connection (and the optional CARTO key).

## Database

The relational database (31 tables, ER schema in `docs/presentation/`) was designed in MySQL and is
hosted on PostgreSQL (Supabase). Every table shown by the webapp is a view (`v_*`) or table of this database
(see `database/postgres/04_views.sql`); no Excel/CSV files are needed.

- `database/mysql/` – MySQL dump
- `database/postgres/` – the same database converted for PostgreSQL (schema, data, constraints, views, security, small corrections)
- `scripts/` – dump converter, loader, keep-alive script
- Setup guide: [`docs/supabase_setup.md`](docs/supabase_setup.md)

## Technologies

Python · Streamlit · Folium · Pandas · Scikit-learn · MySQL · PostgreSQL (Supabase) · Tableau · Rhino 3D

## Contacts

nubiantemples.project@gmail.com
