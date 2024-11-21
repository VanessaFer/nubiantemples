import streamlit as st
import streamlit.components.v1 as components

def app():

    st.header("Data Visualisation")
    
    #components.iframe("https://public.tableau.com/views/DeitiesandKingsofthetempleofKalabsha/Dashboard1?:language=it-IT&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link", height=500)
    st.divider("A jump into the data of the temple of Kalabsha")

    st.write("""I studied the temple of Kalabsha for my MA thesis. At that time, I created a 2D representation of the walls of the temple with Rhynoceros 3D,
    using the dimensions indicated by Henri Gauthier in his publication. 
    <br>It was useful, for sure: I had the possibility get an idea thanks to the graphic version of the scenes described by Gauthier. 
    Those still have a limit: one can't interact with them in order to have extra information.
    <br>""")

    components.html("""
<div class='tableauPlaceholder' id='viz1732221254591' style='position: relative'><noscript><a href='#'><img alt='Deities, posture and crowns ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;di&#47;divinita_corona&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='divinita_corona&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;di&#47;divinita_corona&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='it-IT' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1732221254591');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
""", height = 600)
