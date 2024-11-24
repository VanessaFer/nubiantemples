import streamlit as st
import pandas as pd
import io

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
        
        st.subheader("Select the scene")
        codice_scena = st.text_input("Scene code")
        st.write("You wrote:", codice_scena)
        #codice = f"{codice_scena}"
        df = pd.read_excel('scena_stanze_registro_titolo.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df = df.loc[:,~df.columns.str.startswith('codice')]
        df_scene = df.loc[df['sigla_scena'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_scene = st.dataframe(df_scene, hide_index=True)
        print(st_df_scene)

        df1 = pd.read_excel('SCENA_BIBLIOGRAFIA.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df1 = df1.loc[:,~df1.columns.str.startswith('codice')]
        df_bibl = df1.loc[df1['sigla_scena'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_bibl = st.dataframe(df_bibl, hide_index=True)
        print(st_df_bibl)

        df2 = pd.read_excel('SCENA_PERSONAGGIO.xlsx')
            # df = df.loc[:,~df.columns.duplicated()]
        df2 = df2.loc[:,~df2.columns.str.startswith('codice')]
        df_char = df2.loc[df2['sigla_scena'] == codice_scena]
        #df_scene = df.drop_duplicates
        st_df_char = st.dataframe(df_char, hide_index=True)
        print(st_df_char)

        buffer = io.BytesIO()
        with pd.ExcelWriter(buffer, engine = 'xlsxwriter') as writer:

            df_scene.to_excel(writer, sheet_name="Scene", index=False)
            df_bibl.to_excel(writer, sheet_name="Bibliography", index=False)
            df_char.to_excel(writer, sheet_name="Characters", index=False)
        writer.close()

        st.download_button(
                label="Download table as Excel file",
                data=buffer,
                file_name="kalabsha_scene.xlsx",
                mime="text/Excel",)
