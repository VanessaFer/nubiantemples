import streamlit as st
from PIL import Image
from streamlit_option_menu import option_menu
#crea il menù a lato della webapp

from config import IMAGES_DIR
import style
from sections import (contacts, history, home, temples_map,
                      data_visualisation, database, bibliography)
#non scrivere il .py

im = Image.open(IMAGES_DIR / "branding" / "site_icon.png")
#https://www.rawpixel.com/image/6314650/png-template-vintage
st.set_page_config(
    page_title="Nubian Temples Project",
    page_icon=im,
    layout="wide",
)

class MultiApp:
    
    def __init__(self):
        self.apps = []
    def add_app(self, title, function):
        self.apps.append({
            "title": title,
            "function": function
        })
    def run():
        style.apply()
        style.sidebar_brand()
        with st.sidebar:
            app = option_menu(
                menu_title = "Menu",
                options = ["Home", "History", "Map", "Database", "Data Visualisation", "Bibliography", "Contacts"],
                icons = ["bi-house", "bi-hourglass-split", "bi-geo-alt", "bi-database", "bar-chart", "bi-book", "bi-envelope"],
                menu_icon = "bi-list",
                default_index = 0,
                styles = style.MENU_STYLES
            )
        
        if app == "Home":
            home.app()
        if app == "History":
            history.app()
        if app == "Map":
            temples_map.app()
        if app == "Database":
            database.app()  
        if app == "Data Visualisation":
            data_visualisation.app()
        if app == "Bibliography":
            bibliography.app()
        if app == "Contacts":
            contacts.app()
    
    run()
