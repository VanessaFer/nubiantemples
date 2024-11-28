import streamlit as st
import pandas as pd
# import mysql.connector
# import sqlalchemy
# import sqlite3
# from sqlite3 import connect
import io
#pip install mysql-connector-python

def app():
    st.title("The Database of the Temple of Kalabsha")
    st.header("A look through the data")
    st.subheader("A quick introduction to the database")
    st.html("""The database was created with MySQL and then connected to the webapp through Python.<br>
    As you can see below, there are two tabs:<br>
    - Scene<br>
    - Deity<br>
    You can choose the one you need for your research: if you need to know some detail about the scenes,
    for example how many offering scenes are depicted inside the temple of Kalabsha; or the bibliography
    of each scene, you should definetely choose the <i>Scene</i> tab.<br>
    If on the contrary, you need data about the deities, the crown they wear, their posture, etc.,
    <i>Deity</i> should be your choice. <br>
    <br>
    Have a nice time exploring!
    """)
    
    st.divider()

    st.subheader("Tabs")
    tab1, tab2, tab3 = st.tabs(["Bibliography", "Scene", "Deity"])

    with tab1:
         st.header("Bibliography")
         st.html("""In this section you can make a research by selecting the book title and the page.
                 The bibliography about the scenes of the temple of Kalabsha 
                 is composed by two books, at the moment:""")
         
         col1, col2 = st.columns(2)
         with col1:
              st.subheader("Le temple de Kalabchah")
              st.html("""'Le temple de Kalabchah' is a book wrote by Henri Gauthier published in 1911.
                      <br>It is part of a larger serie named 'Les Temples immergés de la Nubie'.
                      It is a quite complete study of the temple: the author describes the rooms and
                      provides their measurements. He writes about the scenes, describing them with accuracy.
                      <br>He mentions the colors too, and the later inscriptions in the court.
                      <br>Here are a couple of links where you can find the PDF version of the book:
                      <br><a href = http://www.archive.org/details/letempledekalabc01gaut>Le temple de Kalabchah pt.1</a>
                      <br><a href = http://www.archive.org/details/letempledekalabc02gaut>Le temple de Kalabchah pt.2</a>
                      <br><a href = http://www.archive.org/details/letempledekalabc03gaut>Le temple de Kalabchah - Plates</a>
                      <br><a href = http://www.archive.org/details/letempledekalabc03gaut>Le temple de Kalabchah - Color plates</a>
                      <br>Unfortunately, the quality of the plates is not high, but luckily you can make
                      a research here and have a look at the plates with a better resolution.
                      <br>
                      <br>
                      """)
              st.subheader("Topographical Bibliography of Ancient Egyptian Hieroglyphic Texts, Reliefs, and Paintings - Volume VII. Nubia, The Deserts and Outside Egypt")
              st.html("""'Topographical Bibliography' is a serie composed by seven volumes wrote by Bertha Porter 
                      and Rosalind Louisa Beaufort Moss published in 1975. The serie is also known by the names of its authors: Porter Moss.
                      <br>Here is the link where you can download the PDF version of the book from:
                      <br><a href = http://www.griffith.ox.ac.uk/topbib/pdf/download.php?file=pm7.pdf>Topographical Bibliography of Ancient Egyptian Hieroglyphic Texts, Reliefs, and Paintings - Volume VII. Nubia, The Deserts and Outside Egypt</a>""")
              
              st.divider()



    with tab2:
        st.header("Scene number")
        st.html("""The temple of Kalabsha has <b>139</b> offering scenes.
                <br>As this project should become bigger by recording more offering scenes from other
                Nubian temples, I assigned an acronym to this temple: <b>KB</b>.<br>
                Lat's say you would like to have the information about the first
                scene of the temple, you should type <b>KB1</b> (no space between the letters and the
                number!).
                <br>You should also keep in mind that the scenes are recorded in the order given by
                Henri Gauthier: from the innermost room, the Sanctuary (Cella of Gauthier) to the Pylon,
                so KB1 is the first scene of the Cella that he describes.
                <br><br>
                Once you have wrote the scene code, you can both have a look at the output and download the
                Excel file containing the data splitted into three sheets.
""")
        st.divider()
        st.subheader("Select the scene")
        st.html("""You can write a scene code between KB1 and KB139.""")
        codice_scena = st.text_input("Scene code")
        st.write("You wrote:", codice_scena)

        st.write("")
        st.write("SCENE")
        df = pd.read_excel('scena_stanze_registro_titolo.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df = df.loc[:,~df.columns.str.startswith('codice')]
        df_scene = df.loc[df['sceneAcronym'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_scene = st.dataframe(df_scene, hide_index=True)
        print(st_df_scene)

        st.write("")
        st.write("CHARACTERS")
        df2 = pd.read_excel('SCENA_PERSONAGGIO.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df2 = df2.loc[:,~df2.columns.str.startswith('codice')]
        df_char = df2.loc[df2['sceneAcronym'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_char = st.dataframe(df_char, hide_index=True)
        print(st_df_char)

        st.write("")
        st.write("BIBLIOGRAPHY")
        df1 = pd.read_excel('SCENA_BIBLIOGRAFIA.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df1 = df1.loc[:,~df1.columns.str.startswith('codice')]
        df_bibl = df1.loc[df1['sceneAcronym'] == codice_scena]
        #df_bibl["publicationYear"] = df_bibl["publicationYear"].astype(str)
        #df_scene = df.drop_duplicates
        st_df_bibl = st.dataframe(df_bibl.style.format(precision = 0, thousands=''), hide_index=True)
        print(st_df_bibl)

        buffer = io.BytesIO()
        with pd.ExcelWriter(buffer, engine = 'xlsxwriter') as writer:
   
    # use to_excel function and specify the sheet_name and index 
    # to store the dataframe in specified sheet
            df_scene.to_excel(writer, sheet_name="Scene", index=False)
            df_bibl.to_excel(writer, sheet_name="Bibliography", index=False)
            df_char.to_excel(writer, sheet_name="Characters", index=False)
        writer.close()

        st.download_button(
                label="Download table as Excel file",
                data=buffer,
                file_name="kalabsha_scene.xlsx",
                mime="text/Excel",)
        
        from IPython.core.display import display, HTML
        st.write("")
        st.write("PLATES")
        plate = st.text_input("Plate number")
        df_img = pd.read_csv("tavole.csv")

        if (df_img["nome_tavola"] == plate).any():
                left_co, cent_co,last_co = st.columns(3)
                with cent_co:
                    st.markdown(
                        """
                        <style>
                            button[title^=Exit]+div [data-testid=stImage]{
                                text-align: center;
                                display: block;
                                margin-left: auto;
                                margin-right: auto;
                                width: 100%;
                            }
                        </style>
                        """, unsafe_allow_html=True
                    )
                    from PIL import Image, ImageOps

                    #tavole = r"C:\Users\vanes\OneDrive\Desktop\mappa_templi_nubiani\tavole_Gauthier"
                    #for i in tavole:
                        #img = ImageOps.exif_transpose(i)
                    st.image(f'tavole_Gauthier/{plate}', width = 450)
                    st.info(f'{plate}')
                    #st.image(f'tavole_Gauthier/{plate}', width = 450)
        
    with tab3:
        #st.header("Deity's name")
        st.html("""In this tab you can do your research by the name of the deity.
                <br>Here is a list of the deities depicted in the offering scenes
                of the temple of Kalabsha:
""")
        col1, col2 = st.columns(2)
        with col1:
            st.html("""
                    - unknown <br>
                    - Amon Ra Horemahet <br>
                    - Amon-Ra<br>
                    - Amun<br>
                    - Amun of Napata<br>
                    - Amun of Primis<br>
                    - Duat-netjer<br>
                    - Hathor<br>
                    - Hor-em-akh<br>et
                    - Hor-nedj-itef<br>
                    - Hor-pa-hred<br>
                    - Horus<br>
                    - Horus of Edfu<br>
                    - Iri-hemes-nefer<br>
                    - Isis<br>
                    - Jj-m-hetep<br>
                    - Khenty-mer<br>
                    - Khnum<br>
                    - Khonsu?<br>
                    - Merur<br>
""")
        with col2:
            st.html("""
                    - Merur the young<br>
                    - Min<br>
                    - Mut<br>
                    - Nekhbet?<br>
                    - Nephthys<br>
                    - Nut<br>
                    - Osiris<br>
                    - Pharaoh of Bigge<br>
                    - Ptah<br>
                    - Safekh-abui?<br>
                    - Satet<br>
                    - Seheter<br>
                    - Sekhmet<br>
                    - Shu<br>
                    - Tanenet<br>
                    - Tefnut<br>
                    - Tetun<br>
                    - Thot<br>
                    - Uadjet<br>
""")
        st.html("""Select the deity you are interested in!""")
