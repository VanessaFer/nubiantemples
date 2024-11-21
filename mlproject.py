import streamlit as st
import pandas as pd
#import mysql.connector
import joblib
import sklearn as sk

#pip install mysql-connector-python
def app():

    st.title("Predict the God")
    st.header("A Machine Learning model")

    st.write("""
    This little Machine Learning project idea aims to create a model which can classify
    the four deities who are depicted the most into the temple of Kalabsha.

    These four deities are:
    - Osiris
    - Isis
    - Merur
    - Uadjet

    It would be great to deepen this model with more data from other Nubian temples. 
             Would the model be
             capable to distinguish the Osiris of the temple of Kalabsha from the Osiris of the temple
             of Philae?

    Anyway! Below you can find some fields to fill with some characteristics of these deities,
             a brief explanation of who they are, their crown and their accessories.

    Have fun!
             """)
    
    st.divider()

    st.header("A brief introduction to the Four Deities")

    st.html("""
As said before, below you can find some information about Osiris, Isis, Merur and Wadjet.
<br><b>Osiris</b> 
<br>Osiris is the God of the Underworld. He has the form of a mummy: he wears a long
            coat that covers his whole body, while he keeps the arms crossed on his chest.
<br>However, in the temple of Kalabsha Osiris is usually drawn as all the other male deities. He
            wears a skirt, sometimes combined with a corset on the upper part of his body.
<br>In this temple he wears the Atef Crown, a crown made by the White Crown or reeds between two ostrich
            feathers.
            
<br><b>Isis</b> 
<br>Isis is the Goddess of Magic. She is the sister and the wife of Osiris.
            <br>She wears a crown made by a solar disc between two cow horns. On the top of the solar
            disc, there is the hyerogliph of the throne, that typically represents Isis.
            
<br><b>Merur</b> 
<br>Merur is the local God of Kalabsha. He usually wears a crown made by three Atef Crowns, ram horns,
            uraei and solar discs.
            
<br><b>Uadjet</b> 
<br>Uadjet is the Goddess of Lower Egypt. She is often depicted wearing the Red Crown.
""")

    st.divider()

    st.header("And now... predict the deity!")

    st.html("""You can choose among several options. Select the ones that you like the most and let the machine learning model guess which deity is the one who has the characteristics that you selected!
    <br>If you don't know what to choose, you can look at the pictures below and find some inspiration!""")

    col1, col2, col3, col4 = st.columns(4)
    with col1:
        st.image("Osiris.png", caption = "The god Osiris", width = 150)
    with col2:
        st.image("Isis.png", caption = "The goddess Isis", width = 150)
    with col3:
        st.image("Merur.png", caption = "The god Merur", width = 150)
    with col4:
        st.image("Uadjet.png", caption = "The goddess Uadjet", width = 150)

    st.subheader("Pick one!")
    
    model_pipe = joblib.load("kalabsha_gods.pkl")

    tipologia_personaggio = st.radio("Select the sex of the deity", ["God", "Goddess"])

    ordine_comparizione = st.number_input("Digit the position",value="int", placeholder="Type a number from 1 to 5")

    seduto_stante = st.radio("Select weather the deity is seated or standing", ["seated", "standing"])

    tipologia_corona = st.selectbox("Select the crown type", 
                       ["headgear, solar disc crown","solar disc crown","headgear, feathered crown",
                        "Atef crown", "headgear, Atef crown", "Lower Egypt crown, Atef crown",
                        "pshent", "Lower Egypt crown"])

    tipologia_abito = st.selectbox("Select the dress type", 
                       ["dress", "corset, skirt", "skirt", "naked, cloak", "cloak"])

    nome_accessorio = st.selectbox("Select the accessory", 
                       ['wadj-sceptre', 'ankle bracelet',
       'was-sceptre', 'false beard',
       'necklace with jb-sign', 
       'right hand raised', 'left hand raised',
       'finger to the mouth', 'flogger/fly swatter', 'ḥḳꜣ scepter'])

    data = {
        "tipologia_personaggio": [tipologia_personaggio],
        "ordine_comparizione": [ordine_comparizione],
        "seduto_stante": [seduto_stante],
        "templi corona.tipologia_corona":[tipologia_corona],
        "templi abito.tipologia_abito": [tipologia_abito],
        "templi accessorio.nome_accessorio": [nome_accessorio],
        }

    input_df = pd.DataFrame(data)

    if st.button("Prediction"):
        res = model_pipe.predict(input_df).astype(int)[0]

        classes = {0:'Isis',
           1:'Osiris',
           2:'Merur',
           3:'Uadjet'
           }

        y_pred = classes[res]

        st.success(f'The name of the deity is: {y_pred}.')
# def app():
#     st.header("The Temple of Kalabsha")
#     st.subheader("*A Database of all the offering scenes of the temple*")

#     #st.write("Work in progress!")


#     connection = mysql.connector.connect(
#     host = "localhost",
#     user = "root",
#     password = "vanni1791",
#     database = "templi"
# )

#     #print("connected")

#     cursor = connection.cursor()

#     cursor.execute("Select * from personaggio")
#     data = cursor.fetchall()

#     df = pd.DataFrame(data, columns = cursor.column_names)
#     st.dataframe(df, hide_index=True)

#     #Seleziono dati da una delle colonne della tabella che ho selezionato
#     st.write(df[df["nome_personaggio"] == "Osiris"])
