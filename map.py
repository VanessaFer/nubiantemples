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

    folium.plugins.Fullscreen(
    position="topright",
    title="Expand",
    title_cancel="Exit",
    force_separate_button=True,
    ).add_to(m)
        
    folium.LayerControl(collapsed=False).add_to(m)

    st.header("Map of the submerged Nubian temples")
    st.divider()

    st.write("""
The map displays the **original location** of the Nubian temples that were relocated after the 
construction of the Second Aswan Dam.
             
See below the map for few notes.
""")

    #Aggiungere istruzioni di navigazione della mappa
    folium_static(m, width=800, height=450)
    # import streamlit.components.v1 as components
    # with open("mappa_templi_nubiani.html",'r') as f: 
    #     html_data = f.read()

    # st.components.v1.html(html_data,height=400)
    st.subheader("Full screen and Legend")
    st.write("""
On the top right of the map, you can find an icon that allows you to see the map in full screen.
Beneath it, there is a legend that shows you the period of construction of the temples.
If you would like to see the temples of a specific period, you can uncheck the boxes next to 
the name of the period you are interested in.    
""")

    st.subheader("Clusters and Pop-ups")
    st.write("""
As you can see, on the map there are some green circles with a number inside of them: these are the
clustered icons of the temples. The number of clusters will increase as you zoom in, until you
can see the icon of the temple. The colors are not casual:
- Red = New Kingdom
- Green = Ptolemaic Kingdom
- Light blue = Roman Period

If you hover your mouse over the icons, a tooltip will show you the name of the temples.
             
A pop-up appears by clicking the icon. Inside the pop-up you can find some information about the 
temple, such as its name, the period(s) of its construction and the pharaoh(s) that worked on it.
             
:blue-background[The pop-ups will be eriched with more contents!]
""")
