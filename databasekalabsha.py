import streamlit as st
import pandas as pd
import mysql.connector
import sqlalchemy
import sqlite3
from sqlite3 import connect
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
    tab1, tab2 = st.tabs(["Scene", "Deity"])
        
    with tab1:
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
        #codice = f"{codice_scena}"
        df = pd.read_excel('scena_stanze_registro_titolo.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df = df.loc[:,~df.columns.str.startswith('codice')]
        df_scene = df.loc[df['sceneAcronym'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_scene = st.dataframe(df_scene, hide_index=True)
        print(st_df_scene)

        df1 = pd.read_excel('SCENA_BIBLIOGRAFIA.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df1 = df1.loc[:,~df1.columns.str.startswith('codice')]
        df_bibl = df1.loc[df1['sceneAcronym'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_bibl = st.dataframe(df_bibl, hide_index=True)
        print(st_df_bibl)

        df2 = pd.read_excel('SCENA_PERSONAGGIO.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df2 = df2.loc[:,~df2.columns.str.startswith('codice')]
        df_char = df2.loc[df2['sceneAcronym'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_char = st.dataframe(df_char, hide_index=True)
        print(st_df_char)

        # @st.cache_data
        # def convert_df(df_scene, df_bibl, df_char):
        #     df_final = 
        #     return df_final.to_csv().encode("utf-8")
        # csv = convert_df(df_scene, df_bibl, df_char)
        # create a excel writer object
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

    with tab2:
        st.header("Deity's name")
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


