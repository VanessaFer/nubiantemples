import streamlit as st
import pandas as pd
import mysql.connector
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
""")
        connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "vanni1791",
        database = "templi"
    )

        #print("connected")

        cursor = connection.cursor()
        codice_scena = st.text_input("Scene code")
        st.write("You selected:", codice_scena)
        
        if codice_scena == 'KB1':
            divinita1 = f"{codice_scena}"
            cursor.execute("""select *
                            from personaggio p
                            join corona c
                            on p.codice_corona = c.codice_corona
                            join scena s
                            on p.codice_scena = s.codice_scena
                            join parte par
                            on s.codice_parte = par.codice_parte
                            join elemento_architettonico ea
                            on ea.codice_e_a = par.codice_e_a
                            join ambiente a
                            on a.codice_ambiente = ea.codice_ambiente
                            where s.sigla_scena = 'KB1'
                            """)
            data = cursor.fetchall()
            df = pd.DataFrame(data, columns = cursor.column_names)
            df = df.loc[:,~df.columns.duplicated()]
            df = df.loc[:,~df.columns.str.startswith('codice')]
            st_df = st.dataframe(df, hide_index=True)
            print(st_df)

            if codice_scena == 'KB1':
                cursor.execute("""select *
                                from scena s
                                join citata c
                                on s.codice_scena = c.codice_scena
                                join bibliografia_scena bs
                                on bs.codice_bibliografia_scena = c.codice_bibliografia_scena
                                where s.sigla_scena ='KB1'
                                """)
                data_biblio = cursor.fetchall()
                df_biblio = pd.DataFrame(data_biblio, columns = cursor.column_names)
                df_biblio = df_biblio.loc[:,~df_biblio.columns.duplicated()]
                df_biblio = df_biblio.loc[:,~df_biblio.columns.str.startswith('codice')]
                st.dataframe(df_biblio, hide_index=True)

            @st.cache_data
            def convert_df(df):
                # IMPORTANT: Cache the conversion to prevent computation on every rerun
                return df.to_csv().encode("utf-8")
            csv = convert_df(df)

            st.download_button(
                label="Download table as CSV",
                data=csv,
                file_name="kalabsha.csv",
                mime="text/csv",)

        #Seleziono dati da una delle colonne della tabella che ho selezionato
        
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
