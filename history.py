import streamlit as st

def app():
    st.title("History of the relocation of the submerged temples of Nubia")
    col1, col2 = st.columns([3,1])
    with col1:
        st.write("""
    During the _20th century_, _two dams_ were built in the southern part of Egypt. 
    These two imposing constructions led to a notable increase in the water level of the Nile River, 
    starting from the early years of the century. 
    This raising involved the monuments of the areas which, in ancient times, corresponded to _Lower and Upper Nubia_.
    Immediately, the scholars who visited the temples involved were alarmed by the damage that 
    this situation could cause, such as the instability of the stone blocks with consequent 
    collapses and the loss of the polychromy where it had been preserved.
    """)
    with col2:
        st.image("Kalabsha_water.jpg", caption = "The Temple of Kalabsha almost submerged")

    st.subheader("The first Aswan Dam (1899-1902)")
    st.write("""
    The construction of the so-called "Old Dam" took place between 
    the end of the 19th century and the very beginning of the 20th century. 
    Between 1907 and 1912 and between 1929 and 1933, the dam was further raised. As a consequence, 
    the water level of the Nile increased, also threatening the Nubian monuments.

    At the beginning of the 20th century, _Gaston Maspero_ (1846-1916) asked the *nations savantes* 
    for help in sending Egyptologists to study these temples. 
    The aim was to _record every detail_ of the buildings, so that nothing could be lost. 
    The _inscriptions_ and reliefs were copied and an important _photographic documentation_ was also created.
    The nations that Maspero asked for help were _France_, _England_ and _Germany_. 
    France sent _Henri Gauthier_, who studied the temples of Kalabsha, Amada, Gerf Hussein and Wadi es-Sebua. 
    England chose _Aylward M. Blackman_, who studied the temples of Bigeh, Maharraqa, Derr and Dendur. 
    _Gunther Röder_ arrived from Germany. He studied Debod, Taffeh and its surroundings, Dakka and Beit el-Wali.

    It is on this massive body of work that most contemporary studies of Nubian temples are based, 
    including the database of this project.        
            """)

    st.subheader("The Second Aswan Dam (1960-1970)")
    st.write("""
    The structure of the first dam was raised three times, however it was clear that it was necessary 
    to build a second, much larger one. The damage in the area of ​​ancient Nubia, already quite significant, 
    would have been devastating as _everything would have been submerged_ by the waters of the Nile, 
    which would have formed a new artificial water basin: Lake Nasser. 
    Not only the temples and archaeological sites already excavated were in danger, 
    but also those that had never been excavated and whose history would have been forever 
    submerged by the waters.
            """)

    st.subheader("UNESCO's appeal (1960)")
    st.write("""
    On March 8, 1960, Vittorino Veronese, then Director General of UNESCO, made an appeal 
    to the nations at the request of the government of the Republic of United Arabia 
    and the government of the Republic of Sudan:
            
    *Nous n'avons pas le droit de laisser disparaître des temples comme ceux d'Abou Simbel 
    et de Philae, qui sont de purs joyaux de l'art ancien, ni d'abandonner à jamais 
    les trésors enfouis dans des zones qui n'ont pas encore fait l'objet de fouilles archéologiques 
    systématiques. La solidarité internationale que nous voulons voir s'instaurer dans tous les domaines 
    trouvera ici une occasion exemplaire de s'affirmer. Personne, en effet, ne saurait douter de l'urgence 
    des efforts à consentir ni de la nécessité d'en répartir le poids sur un grand nombre de pays.*
            
    Many countries responded to this call for help, and Egypt promised to donate some small 
    temples to those who would contribute to the cause. Italy was given the rock _temple 
    of Ellesyia_, now preserved in the Egyptian Museum of Turin; 
    Spain was given the _temple of Debod_, now located in the Cuartel de la Montaña park in Madrid; 
    the United States was given the _temple of Dendur_, now preserved in the MoMA; 
    Germany was given the _portal of the Ptolemaic sanctuary of Kalabsha_, now located in the Ägyptisches 
    Museum in Berlin; the Netherlands was given the _temple of Tafeh North_, now preserved in 
    the Rijksmuseum van Oudheden in Leiden.
    """)
