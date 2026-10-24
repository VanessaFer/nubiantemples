"""Percorsi centralizzati del progetto.

Tutti i file di dati e immagini vengono risolti a partire dalla cartella
della repo, così l'app funziona da qualsiasi directory venga lanciata.
"""
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent

ASSETS_DIR = BASE_DIR / "assets"
IMAGES_DIR = ASSETS_DIR / "images"
PLATES_DIR = ASSETS_DIR / "plates"
MODELS_DIR = BASE_DIR / "models"
