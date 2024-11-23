import streamlit as st
#pip install mysql-connector-python

def app():
    tab1, tab2, tab3 = st.tabs(["Room", "Scene", "Deity"])

    with tab1:
        st.header("Room type")
        st.html("""In this tab you can search through the database by room type.
                <br>The temple of Kalabsha is composed by these rooms (from the inside to the outside,
                the descriprion order used by Henri Gauthier in his book):
                - Sanctuary (Cella of Gauthier)
                - Inner vestibule (Procella of Gauthier)
                - Outer vestibule (Antechamber of Gauthier)
                - Hypostyle (Pronaos of Gauthier)
                - Forecourt
                - Pylon""")
        
    with tab2:
        st.header("Scene number")
        st.html("""The temple of Kalabsha has <b>139</b> offering scenes.
                <br>As this project should become bigger by recording more offering scenes from other
                Nubian temples, I assigned an acronym to this temple: <b>KB</b>.<br>
                Lat's say you would like to have the information about the first
                scene of the temple, you should type <b>KB1</b> (no space between the letters and the
                number!).
                <br>You should also keep in mind that the scenes are recorded in the order given by
                Henri Gauthier: from the innermost room, the Sanctuary (Cella of Gauthier) to the Pylon.
""")
        
    with tab3:
        st.header("Deity's name")
        st.html("""In this tab you can do your research by the name of the deity.
                <br>Here is a list of the deities depicted in the offering scenes
                of the temple of Kalabsha:
""")
        col1, col2 = st.columns(2)
        with col1:
            st.html("""
                    - unknown
                    - Amon Ra Horemahet
                    - Amon-Ra
                    - Amun
                    - Amun of Napata
                    - Amun of Primis
                    - Duat-netjer
                    - Hathor
                    - Hor-em-akhet
                    - Hor-nedj-itef
                    - Hor-pa-hred
                    - Horus
                    - Horus of Edfu
                    - Iri-hemes-nefer
                    - Isis
                    - Jj-m-hetep
                    - Khenty-mer
                    - Khnum
                    K- honsu?
                    - Merur
""")
        with col2:
            st.html("""
                    - Merur the young
                    - Min
                    - Mut
                    - Nekhbet?
                    - Nephthys
                    - Nut
                    - Osiris
                    - Pharaoh of Bigge
                    - Ptah
                    - Safekh-abui?
                    - Satet
                    - Seheter
                    - Sekhmet
                    - Shu
                    - Tanenet
                    - Tefnut
                    - Tetun
                    - Thot
                    - Uadjet
""")
            st.html("""Select the deity you are interested in!""")
