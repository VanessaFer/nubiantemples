import streamlit as st
import pandas as pd
import numpy as np
import folium
#import pathlib as pl
#from IPython.display import display
from folium import plugins
from folium.plugins import MarkerCluster
#import branca.colormap as cm
from streamlit_folium import folium_static

def app():
    df = pd.read_csv("templi_nubiani.csv")
    m = folium.Map(location = [22.809872815747962, 32.562480661588175], zoom_start=7, tiles = None)
    t = folium.TileLayer(tiles="Cartodb Positron", control=False).add_to(m)
    mcg = folium.plugins.MarkerCluster(control=False)
    m.add_child(mcg)

    nk = plugins.FeatureGroupSubGroup(mcg, 'New Kingdom')
    m.add_child(nk)

    ptol = plugins.FeatureGroupSubGroup(mcg, 'Ptolemaic Kingdom')
    m.add_child(ptol)

    roman = plugins.FeatureGroupSubGroup(mcg, 'Roman Period')
    m.add_child(roman)

    from urllib.parse import urlparse
    for index, row in df.iterrows():
     if row['epoca'] == "New Kingdom":
        kw = {"prefix": "fa", "color": "red", "icon": "ankh"}
        icon = folium.Icon(**kw)
        divinita1 = f"{row['link_divinita1']}"
        divinita2 = f"{row['link_divinita2']}"
        divinita3 = f"{row['link_divinita3']}"
        divinita4 = f"{row['link_divinita4']}"
        faraone1 = f"{row['link_faraone1']}"
        faraone2 = f"{row['link_faraone2']}"
        faraone3 = f"{row['link_faraone3']}"
        faraone4 = f"{row['link_faraone4']}"
        faraone5 = f"{row['link_faraone5']}"
        faraone6 = f"{row['link_faraone6']}"
        faraone7 = f"{row['link_faraone7']}"
        html = f'''

        <center><b><h2>{row['nome']}</h2></b></center><br>
        <p><b>Ancient location</b><br>{row['localita_antica']}
        <p><b>New location</b><br>{row['localita_odierna']}
        <p><b>Dedicated to</b>:<br><a href={divinita1} target="_blank">{row['divinita1']}</a>
        <br><a href={divinita2} target="_blank">{row['divinita2']}</a>
        <br><a href={divinita3} target="_blank">{row['divinita3']}</a>
        <br><a href={divinita4} target="_blank">{row['divinita4']}</a>
        <p><b>Period</b><br>{row['epoca']}</a>
        <p><b>Dynasty</b><br>{row['dinastia']}
        <p><b>King</b>:
        <br><a href={faraone1} target="_blank">{row['faraone1']}</a>
        <br><a href={faraone2} target="_blank">{row['faraone2']}</a>
        <br><a href={faraone3} target="_blank">{row['faraone3']}</a>
        <br><a href={faraone4} target="_blank">{row['faraone4']}</a>
        <br><a href={faraone5} target="_blank">{row['faraone5']}</a>
        <br><a href={faraone6} target="_blank">{row['faraone6']}</a>
        <br><a href={faraone7} target="_blank">{row['faraone7']}</a>
        '''
        popup = folium.Popup(html,
                     min_width=300,
                     max_width=300)
        folium.Marker([row['latitudine_antica'], row['longitudine_antica']],
        popup = popup,
        tooltip=row['nome'],
        icon = icon
                    ).add_to(nk)

     elif row['epoca'] == "Ptolemaic Kingdom":
        kw = {"prefix": "fa", "color": "green", "icon": "ankh"}
        icon = folium.Icon(**kw)
        divinita1 = f"{row['link_divinita1']}"
        divinita2 = f"{row['link_divinita2']}"
        divinita3 = f"{row['link_divinita3']}"
        divinita4 = f"{row['link_divinita4']}"
        faraone1 = f"{row['link_faraone1']}"
        faraone2 = f"{row['link_faraone2']}"
        faraone3 = f"{row['link_faraone3']}"
        faraone4 = f"{row['link_faraone4']}"
        faraone5 = f"{row['link_faraone5']}"
        faraone6 = f"{row['link_faraone6']}"
        faraone7 = f"{row['link_faraone7']}"
        html = f'''

        <center><b><h2>{row['nome']}</h2></b></center><br>
        <p><b>Ancient location</b><br>{row['localita_antica']}
        <p><b>New location</b><br>{row['localita_odierna']}
        <p><b>Dedicated to</b>:<br><a href={divinita1} target="_blank">{row['divinita1']}</a>
        <br><a href={divinita2} target="_blank">{row['divinita2']}</a>
        <br><a href={divinita3} target="_blank">{row['divinita3']}</a>
        <br><a href={divinita4} target="_blank">{row['divinita4']}</a>
        <p><b>Period</b><br>{row['epoca']}</a>
        <p><b>Dynasty</b><br>{row['dinastia']}
        <p><b>King</b>:
        <br><a href={faraone1} target="_blank">{row['faraone1']}</a>
        <br><a href={faraone2} target="_blank">{row['faraone2']}</a>
        <br><a href={faraone3} target="_blank">{row['faraone3']}</a>
        <br><a href={faraone4} target="_blank">{row['faraone4']}</a>
        <br><a href={faraone5} target="_blank">{row['faraone5']}</a>
        <br><a href={faraone6} target="_blank">{row['faraone6']}</a>
        <br><a href={faraone7} target="_blank">{row['faraone7']}</a>
        '''
        popup = folium.Popup(html,
                     min_width=300,
                     max_width=300)
        folium.Marker([row['latitudine_antica'], row['longitudine_antica']],
        popup = popup,
        tooltip=row['nome'],
        icon = icon
                    ).add_to(ptol)

     elif row['epoca'] == "Roman Period":
        kw = {"prefix": "fa", "color": "blue", "icon": "ankh"}
        icon = folium.Icon(**kw)
        divinita1 = f"{row['link_divinita1']}"
        divinita2 = f"{row['link_divinita2']}"
        divinita3 = f"{row['link_divinita3']}"
        divinita4 = f"{row['link_divinita4']}"
        faraone1 = f"{row['link_faraone1']}"
        faraone2 = f"{row['link_faraone2']}"
        faraone3 = f"{row['link_faraone3']}"
        faraone4 = f"{row['link_faraone4']}"
        faraone5 = f"{row['link_faraone5']}"
        faraone6 = f"{row['link_faraone6']}"
        faraone7 = f"{row['link_faraone7']}"
        html = f'''

        <center><b><h2>{row['nome']}</h2></b></center><br>
        <p><b>Ancient location</b><br>{row['localita_antica']}
        <p><b>New location</b><br>{row['localita_odierna']}
        <p><b>Dedicated to</b>:<br><a href={divinita1} target="_blank">{row['divinita1']}</a>
        <br><a href={divinita2} target="_blank">{row['divinita2']}</a>
        <br><a href={divinita3} target="_blank">{row['divinita3']}</a>
        <br><a href={divinita4} target="_blank">{row['divinita4']}</a>
        <p><b>Period</b><br>{row['epoca']}</a>
        <p><b>Dynasty</b><br>{row['dinastia']}
        <p><b>King</b>:
        <br><a href={faraone1} target="_blank">{row['faraone1']}</a>
        <br><a href={faraone2} target="_blank">{row['faraone2']}</a>
        <br><a href={faraone3} target="_blank">{row['faraone3']}</a>
        <br><a href={faraone4} target="_blank">{row['faraone4']}</a>
        <br><a href={faraone5} target="_blank">{row['faraone5']}</a>
        <br><a href={faraone6} target="_blank">{row['faraone6']}</a>
        <br><a href={faraone7} target="_blank">{row['faraone7']}</a>
        '''
        popup = folium.Popup(html,
                     min_width=300,
                     max_width=300)
        folium.Marker([row['latitudine_antica'], row['longitudine_antica']],
        popup = popup,
        tooltip=row['nome'],
        icon = icon
                    ).add_to(roman)
        
    folium.LayerControl(collapsed=False).add_to(m)

    st.header("Map of the submerged Nubian temples")

    #Aggiungere istruzioni di navigazione della mappa
    folium_static(m, height=500,width=500)
    # import streamlit.components.v1 as components
    # with open("mappa_templi_nubiani.html",'r') as f: 
    #     html_data = f.read()

    # st.components.v1.html(html_data,height=400)
