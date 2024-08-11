import streamlit as st

def app():
    st.header("Map of the submerged Nubian temples")

    #Aggiungere istruzioni di navigazione della mappa

    import streamlit.components.v1 as components
    with open("mappa_templi_nubiani.html",'r') as f: 
        html_data = f.read()

    st.components.v1.html(html_data,height=400)
