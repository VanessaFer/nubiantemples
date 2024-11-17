import streamlit as st
import pandas as pd
#import mysql.connector
import joblib
import sklearn as sk

#pip install mysql-connector-python
def app():

    st.header("Predict the God")
    st.subheader("A Machine Learning model")

    col1, col2, col3, col4 = st.columns(4)
    with col1:
        st.image("Osiris.png", caption = "The god Osiris", width = 150)
    with col2:
        st.image("Isis.png", caption = "The goddess Isis", width = 150)
    with col3:
        st.image("Merur.png", caption = "The god Merur", width = 150)
    with col4:
        st.image("Uadjet.png", caption = "The goddess Uadjet", width = 150)

    model_pipe = joblib.load("kalabsha_gods.pkl")

    tipologia_personaggio = st.radio("Select the sex of the deity", ["God", "Goddess"])

    ordine_comparizione = st.number_input("Digit the position",value=None, placeholder="Type a number from 1 to 5")

    seduto_stante = st.radio("Select weather the deity is seated or standing", ["seated", "standing"])

    tipologia_corona = st.selectbox("Select the crown type", 
                       ["headgear, solar disc crown","solar disc crown","headgear, feathered crown",
                        "Atef crown", "headgear, Atef crown", "Lower Egypt crown, Atef crown",
                        "pshent", "Lower Egypt crown", "headgear"])

    tipologia_abito = st.selectbox("Select the dress type", 
                       ["dress", "corset, skirt", "skirt", "naked, cloak", "cloak"])

    nome_accessorio = st.selectbox("Select the accessory", 
                       ['ankh', 'wadj-sceptre', 'necklace', 'wrist bracelet',
       'arm bracelet', 'ankle bracelet', 'feet destroyed', 'destroyed',
       'top of the sceptre destroyed', 'left hand destroyed',
       'was-sceptre', 'neck destroyed', 'false beard',
       'right hand destroyed', 'arms destroyed', 'face destroyed',
       'necklace with jb-sign', 'Red Crown', 'garland',
       'right hand raised', 'left hand raised', 'breeding Horus',
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
