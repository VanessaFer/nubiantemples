import streamlit as st
import streamlit.components.v1 as components

def app():

    st.header("Data Visualisation")
    
    components.iframe("https://public.tableau.com/views/DeitiesandKingsofthetempleofKalabsha/Dashboard1?:language=it-IT&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link", height=500)
