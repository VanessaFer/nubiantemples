from config import IMAGES_DIR
import streamlit as st

st.header("History of the relocation of the submerged temples of Nubia")
col1, col2 = st.columns([2,1])
with col1:
    st.write("""
With the victory of the Battle of Anzio, Egypt thus became the emperor's personal province.
After Augustus invested energy and resources in the military field within the Dodecascheno, 
he and his successors continued the Ptolemaic tradition of building new temple buildings of 
Egyptian tradition. Among the various interventions, numerous are recorded in Lower Nubia to show 
Meroe the Roman presence in this territory. Augustus enlarged pre-existing temples and built new ones. 
As for the temple of Kalabsha, initially (29-25 BC) he completed the decoration begun in the Ptolemaic 
era and had a monumental door built. The Augustan decoration, which took place in two phases and 
was carried out with the aim of propaganda to maintain control of the Dodecascheno, was carried out 
thanks to the help of the priests of the temple of Philae, which had by then acquired greater 
importance in the area of ​​the first cataract.
Although the works were completed, Augustus decided to demolish the Ptolemaic building to 
build a more monumental one. The works began between 25 and 22 BC and continued until his death.
             
Why did Augustus decided to demolish the previous building?
In addition to giving greater pomp to the most important site of the entire Dodecanese; 
and to underline the victory against Meroe; Augustus probably intended to create a homogeneous 
community from a political and cultural point of view, so as to smooth out the differences and 
tensions that emerged with the Roman occupation. The dimensions and the iconographic program 
of the temple, considered the counterpart of the temple of Isis at Philae, 
reveal the great importance that Kalabsha now had within the Dodecanese.
             
After the death of Augustus, work on the temple of Kalabsha continued. 
There is almost certainly evidence of the intervention of Trajan first and then of Antoninus Pius.
""")
with col2:
    st.image(str(IMAGES_DIR / "temples" / "temple_Kalabsha.jpg"), caption = "The façade fo the Temple of Kalabsha", width = 400)

st.subheader("Stucture of the temple")
st.write("""
The layout and dimensions of the rooms, with the exception of some particularities,
reflect the canon of Egyptian temple structures. Overall the
so-called *telescope* shape: from large and bright areas one gradually passes to lower and darker rooms.
The structure of the temple is comparable to that of the temple of Dendur of the Augustan era.
The temple, like most Egyptian religious buildings, was built on an axis whose direction goes 
from east to west. 

The pylon therefore faces the Nile River. 
It was reachable by water thanks to the presence of a dock. After climbing a few steps one comes 
across a pylon of monumental dimensions which access is via a staircase. In front of the pylon, 
after what was perhaps an avenue of sphinxes, there is a terrace for worship. 
The pylon also gives access to a partially colonnaded courtyard. 
The floor of the temple is made of sandstone. The external façade of the pronaos, 
characterized by four partitions, overlooks it. The room shows clear traces of the transformation 
caused by the Christians. 
From the pronaos you reach the external vestibule, 
the first of the innermost rooms of the temple. From here, one can reach the top of the temple 
and a room interpreted as a *wabet*. 
Last but not least, there are the internal vestibule and the sanctuary, where the colors of the reliefs 
had been preserved quite well until the time when Gauthier described it.

In addition to the main structure, there are two walls that surround the main building. 
Between the first and the second wall, in the northern part of the temple, there is the 
so-called Ptolemaic chapel, the only intact testimony to the intervention of the Ptolemies on this site.
Outside the second wall, in the south-western part of the temple, there is a hemispeos, 
characterized by an external colonnade and a single internal room.
""")