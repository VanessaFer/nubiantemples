# 🏛️ The Submerged Temples of Nubia – Interactive Web App

Personal research project on the Nubian temples relocated after the UNESCO campaign (1960s),
based on the studies of Henri Gauthier, Aylward M. Blackman and Günther Röder.

> **Work in progress!** – the database currently contains the data of the Temple of Kalabsha.

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
├── config.py                # centralised paths (DATA_DIR, ASSETS_DIR, ...)
├── requirements.txt
├── sections/                # one module per page of the app
├── data/
│   ├── tables/              # CSV / Excel tables used by the app and the DB
│   ├── reference/           # supporting reference tables
│   └── database/            # MySQL dump of the `templi` database
├── models/                  # trained model (kalabsha_gods.pkl)
├── assets/
│   ├── images/              # temples, deities, branding
│   └── plates/              # Gauthier's plates (Tav. *.jpg)
├── docs/                    # presentation material, ER schema, reference images
├── legacy/                  # old / unused scripts kept for reference
└── .streamlit/              # secrets template (never commit secrets.toml)
```

## Run it locally

```bash
python -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
streamlit run main.py
```

Optional: copy `.streamlit/secrets.toml.example` to `.streamlit/secrets.toml` to set the CARTO key.

## Database

The relational database was designed in MySQL (ER schema in `docs/presentation/`).
To recreate it: `mysql -u <user> -p < data/database/db_templi_2024-11-16.sql`.
The web app reads the exported tables in `data/tables/`.

## Technologies

Python · Streamlit · Folium · Pandas · Scikit-learn · MySQL · Tableau · Rhino 3D

## Contacts

nubiantemples.project@gmail.com
