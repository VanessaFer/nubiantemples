from config import IMAGES_DIR
import streamlit as st

def app():
    st.title("The Submerged Temples of Nubia")
    st.subheader("*A project dedicated to the temples that were relocated*") #markdown
    st.markdown(
        '<div class="nt-note"><b>Phase 1:</b> the offering scenes of the temple of Kalabsha. '
        'The other relocated temples listed below are planned and will be added over time.</div>',
        unsafe_allow_html=True,
    )
    st.divider()

    st.header("A brief introduction to the Project")
    col1, col2 = st.columns([2,1])
    
    with col1:
        st.markdown("""
    As clarified by both title and subtitle of this page, this is an **emerging project**
             about the **Nubian temples that were relocated** thanks to the UNESCO's appeal (1960).

    The project is based on the studies by **Henri Gauthier**, **Aylward M. Blackman** and **Gunther Röder**.
             Those studies were published in different volumes that belong to a collection named 
             _Les Temples immergés de la Nubie_.

    Here is the list of the temples that will be considered for this project:
    - Temple of Amada
    - Temple of Beit el-Wali
    - Temple of Dakka
    - Temple of Debod
    - Temple of Dendur
    - Temple of Derr
    - Temple of Gerf Hussein
    - Temple of Kalabsha
    - Temple of Maharraqa
    - Temple of Taffeh
    - Temples of Wadi es-Sebua
   
    The aim is to **digitise the data of the offering scenes** of the temples mentioned above.
                
    The consultation of the data is **free and open to everyone** who wants to know more about these temples: 
             scholars, professors, curious people, etc.

    :blue-background[At the moment, only the offering scenes of the **Temple of 
             Kalabsha** have been digitised.]
                
    Further updates are in progress.
    """)
    with col2:
        st.image(str(IMAGES_DIR / "temples" / "Kalabsha.jpg"), caption = "The Temple of Kalabsha from the Nile River", width = 400)
    
    st.divider()  

    st.header("A small guide to the website")
    st.write("""
    This website is structured as follows:
    - **Home**: here you can find some information about the project and a small guide to the website
    - **History**: in this page there is a recap about the relocation of the Nubian temples
    - **Map**: an interactive map where you can explore the Nubian temples through some 
             information
    - **Database**: this is the core of the project. In this page you can query the database in order
             to find the data you need
    - **Data Visualisation**: interactive charts built on the database, to explore the data by deity, room, 
             epithet or crown
    - **Bibliography**: the bibliography of the temple of Kalabsha, with a search by author, title or year
    - **Contacts**: if you have any advice, please feel free to contact me!
""")
    
    st.subheader("And now... have fun exploring!")

    
