import streamlit as st

def app():
    st.title("The submerged Temples of Nubia")
    st.subheader("*A project dedicated to the temples that were relocated*") #markdown
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
   
    The aim is to **digitalize the data of the offering scenes** of the temples mentioned above.
                
    The consultation of the data is **free and open to everyone** who wants to know more about these temples: 
             scholars, professors, curious people, etc.

    :blue-background[At the moment, the data of the offering scenes of the **Temple of 
             Kalabsha** were digitalised.]
                
    Further uptdates are in progress.
    """)
    with col2:
        st.image("Kalabsha.jpg", caption = "The Temple of Kalabsha from the Nile River", width = 400)
    
    st.divider()  

    st.header("A small guide to the website")
    st.write("""
    This website is structured as it follows:
    - **Home**: here you can find some information about the project and a small guide to the website
    - **History**: in this page there is a recap about the relocation of the Nubian temples
    - **Map**: a digital and interactive map waits for you to explore the Nubian temples through some 
             information
    - **Machine Learning**: here is a simple classification model that will try to recognize
             the deity for you
    - **Database**: this is the core of the project. In this page you can query the database in order
             to have the data you need
    - **Data Visualisation**: a graphic visualisation of the Database page, where you can 
             interact with the diagrams to give an easier look to the data
    - **Contacts**: if you have some advices, please feel free to contact me!
""")
    
    st.subheader("And now... have fun exploring!")

    
