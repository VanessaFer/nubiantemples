import streamlit as st
from PIL import Image

def app():
    st.header("Map of the submerged Nubian temples")

    #Aggiungere istruzioni di navigazione della mappa

    import streamlit.components.v1 as components
    path_to_html = r"C:\Users\vanes\OneDrive\Desktop\mappa_templi_nubiani\mappa_templi_nubiani.html"
    with open(path_to_html,'r') as f: 
        html_data = f.read()

    st.components.v1.html(html_data,height=400)