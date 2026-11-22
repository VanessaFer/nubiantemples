from config import IMAGES_DIR
import streamlit as st
from sections import dataviz_charts

def app():

    st.title("Data Visualisation")
    
    st.header("A jump into the data of the temple of Kalabsha")

    st.subheader("The origins of the idea")
    col1, col2 = st.columns(2)
    with col1:
        st.html("""I studied the temple of Kalabsha for my MA thesis. I created a 2D representation of the walls of the temple with Rhynoceros 3D,
    using the dimensions indicated by Henri Gauthier in his publication. 
    <br>It was useful, for sure: I was able to get an idea thanks to the graphic version of the scenes described by Gauthier. 
    Those still have a limit: it is not possible to interact with them to have extra information.
    <br>""")
    with col2:
        st.image(str(IMAGES_DIR / "diagrams" / "Cella.PNG"), caption = "The 2D version of the four walls of the Cella")

    st.divider()

    st.subheader("The idea today")

    st.html("""Thanks to data visualisation tools it is possible today to create interactive charts in order to have a clearer idea 
    about the stored data.
    <br>Below you will find some charts about the characters of the temple of Kalabsha, their appearance, their epithets and the gifts they both receive and give.
    <br>By using the filters and hovering over the charts you will be able to explore the data.
    <br>
    """)
    
    dataviz_charts.app()
