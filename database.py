import streamlit as st
import pandas as pd
import mysql.connector
#pip install mysql-connector-python

def app():

    connection = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "vanni1791",
    database = "templi"
)

    #print("connected")

    cursor = connection.cursor()

    cursor.execute("Select * from personaggio")
    data = cursor.fetchall()

    st.header("The Temple of Kalabsha")
    st.subheader("*A Database of all the offering scenes of the temple*")

    df = pd.DataFrame(data, columns = cursor.column_names)
    st.dataframe(df)

    #Seleziono dati da una delle colonne della tabella che ho selezionato
    st.write(df[df["nome_personaggio"] == "Osiris"])
