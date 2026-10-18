import streamlit as st

st.title("Pantheon dell'Antico Egitto")

st.header(":green[Osiri]") #markdown

from PIL import Image

image = Image.open("osiride.jpg")
col1, col2 = st.columns([3,1])
with col1:
    st.write("""
Osiri era il sovrano delle Due Terre.
         
Secondo la leggenda, suo fratello Seth 
avrebbe _fatto a pezzi_ il suo corpo e lo 
avrebbe sparso nel fiume Nilo. Le sorelle, Isi e Nefti, avrebbero cercato i resti del corpo del fratello
e, attraverso la magia, lo avrebbero ricomposto
ridandogli la vita.
         
Da quel momento il suo corpo è diventuto
:green[verde] ed ha assunto il dominio dell'**Oltretomba**.
""")
with col2:
    st.image(image, caption="Il dio Osiri")

st.subheader("Il corpo di Osiri")

x1 = st.slider("Scegli il numero di pezzi del corpo di Osiri", 0, 10, 3)
x2 = st.slider("Scegli a quanti km di distanza sono stati ritrovati", 0, 300, 25)

def area(l1:float, l2:float):
    a = l1*l2
    return a

if st.button("Premimi per il risultato"):
    st.write("""Il tempo impiegato per rimettere insieme il corpo
             di Osiri è """, area(x1, x2), """ ore.""")

st.sidebar.title("Pantheon dell'Antico Egitto")
st.sidebar.header(":green[Osiri]")
st.sidebar.subheader("Il corpo di Osiri")

import matplotlib.pyplot as plt
from numpy.random import rand
st.title("Grafico 1")
fig = plt.figure(figsize=(18,10))
plt.scatter([1,2,3,4,5], [1,2,3,4,5])
st.pyplot(fig)

st.title("Grafico 2")
rn = st.slider("Inserisci il numero di punti")
x = rand(rn)
y = rand(rn)
fig2 = plt.figure(figsize=(18,10))
plt.plot(x,y,"or")

st.pyplot(fig2)

st.title("Input")
input1 = st.text_input("Scrivi il genere", "Donna")
input2 = st.number_input("Inserisci età", 0, 100, 1)
if st.button("Risultato"):
    st.success("Complimenti!")

st.title("Data Transformation")
df = st.file_uploader("Scegli un file")

import pandas as pd
st.title("Divinità più frequenti nel tempio di Kalabsha")
df = pd.read_csv("prensonaggi_tempio.csv")
substring = "Augustus"
filter =df["nome_personaggio"].str.contains(substring)
df = df[~filter]
df = df[df["nome_personaggio"].str.contains("Nile") == False]


import seaborn as sns
fig3 = plt.figure()
sns.countplot(x = "nome_personaggio", hue = "nome_personaggio", 
              data = df, 
              color = "black",
              order = df["nome_personaggio"].value_counts().iloc[:10].index)
plt.xticks(rotation=45)
plt.xlabel = ("Divinità")
plt.ylabel = ("Conteggio")
st.pyplot(fig3)

import plotly.express as px
st.title("Mappa dei templi nubiani")
dflat = pd.read_csv("latlong_tempio.csv")

#st.map(dflat, color = "#174f5b", size = 50)
def display_map(loc_data):
    fig = px.scatter_mapbox(loc_data, lat = "latitude", lon = "longitude",
                            hover_name = "nome_tempio", hover_data = "period")
    fig.update_layout(mapbox_style = "open-street-map")
    fig.update_layout(legend = dict(bgcolor = "LightBlue"))
    return fig

px_map = display_map(dflat)
st.plotly_chart(px_map)