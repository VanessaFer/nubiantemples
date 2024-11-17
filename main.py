import streamlit as st
from PIL import Image
from streamlit_option_menu import option_menu
#crea il menù a lato della webapp

import contacts, mlproject, history, home, map, datavisualisation
#non scrivere il .py

im = Image.open("icona_sito1.png")
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
        with st.sidebar:
            app = option_menu(
                menu_title = "Menu",
                options = ["Home", "History", "Map", "Machine Learning Project", "Data Visualisation", "Contacts"],
                icons = ["bi-house", "bi-hourglass-split", "bi-geo-alt", "bi-box","bi-database", "bi-envelope"],
                #orientation = "horizontal",
                menu_icon = "bi-list",
                default_index = 0,
                styles = {
                    "container": {"padding": "5!important", "background-color": "black"},
                    "icon": {"color": "white", "font-size": "23px"},
                    "nav-link": {"color": "white", "font-size": "20 px", "text-align": "left", "margin": "0px" },
                    "nav-link-selected": {"color": "black", "background-color": "#C2B280"}
                }
            )
        
        if app == "Home":
            home.app()
        if app == "History":
            history.app()
        if app == "Map":
            map.app()
        if app == "Machine Learning Project":
            mlproject.app()
        if app == "Data Visualisation":
            datavisualisation.app()
        if app == "Contacts":
            contacts.app()
    
    run()
