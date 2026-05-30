# The Submerged Temples of Nubia – Interactive Web App
🔗 **Live app**: [Nubian Temples Project](https://nubiantemplesproject.streamlit.app/)

## Project Overview
A personal research project and interactive web application dedicated to the 
Nubian temples that were relocated thanks to UNESCO's international campaign 
(1960), following the construction of the Aswan Dams. The project is based on 
the studies by Henri Gauthier, Aylward M. Blackman, and Gunther Röder, 
published in the collection *Les Temples immergés de la Nubie*.

The app is a work in progress — further temples and data will be added 
over time.

## About
I am Vanessa, a graduate in Archaeology and Cultures of the Ancient World 
from the University of Bologna. My MA thesis, in the field of Egyptology, 
focused on the offering scenes of the Temple of Kalabsha in which the god 
Osiris appears. The Nubian Temples Project was born as a natural extension 
of that research, with the goal of making the data collected during my 
studies accessible and explorable through modern data tools.

## Features

### 🏛️ History
A detailed recap of the historical events that led to the relocation of the 
Nubian temples, from the construction of the first Aswan Dam (1899-1902) 
to the UNESCO campaign.

### 🗺️ Map
An interactive map showing the original locations of the relocated Nubian 
temples, built with Folium. Temples are filtered by historical period 
(New Kingdom, Ptolemaic Kingdom, Roman Period) and displayed as 
color-coded clustered markers with pop-up information including temple 
name, construction period, and associated pharaohs.

### 🤖 Machine Learning – "Predict the God"
A classification model that predicts which of the four main deities depicted 
in the Temple of Kalabsha (Osiris, Isis, Merur, Uadjet) matches a set of 
iconographic characteristics selected by the user (crown, posture, 
accessories, etc.). The model was trained on data digitised from the 
temple's offering scenes.

### 🗄️ Database
A MySQL database connected to the app via Python, containing data from the 
offering scenes of the Temple of Kalabsha (139 scenes). Users can query the 
database across multiple tabs:
- **Bibliography** – search by book title and page number
- **Scene** – query individual scenes by code (KB1–KB139), with the option 
  to download results as an Excel file
- **Deity** – query data about specific deities
- **Temple area** and **Bibliography of the temple**

### 📊 Data Visualisation
Interactive Tableau dashboards embedded in the app, visualising data about 
the deities of the Temple of Kalabsha: their appearance, posture, crowns, 
clothing, epithets, and the gifts they give and receive. Dashboards support 
drill-down interaction by clicking on the charts.

## Technologies Used
- Python
- Streamlit
- Folium
- MySQL
- Tableau
- Pandas
- Scikit-learn (Machine Learning)
- Rhino 3D (for the 2D spatial reference model of the temple walls)

## Status
🚧 Work in progress — currently the database contains data from the 
Temple of Kalabsha. Further temples will be added in future updates.

## Contacts
nubiantemples.project@gmail.com
