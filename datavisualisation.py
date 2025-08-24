import streamlit as st
import streamlit.components.v1 as components

def app():

    st.title("Data Visualisation")
    
    #components.iframe("https://public.tableau.com/views/DeitiesandKingsofthetempleofKalabsha/Dashboard1?:language=it-IT&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link", height=500)
    st.header("A jump into the data of the temple of Kalabsha")

    st.subheader("The origins of the idea")
    col1, col2 = st.columns(2)
    with col1:
        st.html("""I studied the temple of Kalabsha for my MA thesis. I created a 2D representation of the walls of the temple with Rhynoceros 3D,
    using the dimensions indicated by Henri Gauthier in his publication. 
    <br>It was useful, for sure: I had the possibility get an idea thanks to the graphic version of the scenes described by Gauthier. 
    Those still have a limit: it is not possible interact with them to have extra information.
    <br>""")
    with col2:
        st.image("Cella.PNG", caption = "The 2D version of the four walls of the Cella")

    st.divider()

    st.subheader("The idea today")

    st.html("""Thanks to versatile Data Visualisation tools such as Tableau and PowerBi, it is possible today to create interactive dashboards in order to have a clearer idea 
    about the stored data.
    <br>Below you will find some dashboards about the deities of the temple of Kalabsha, their appearance, their epithets and the gifts they both receive and give.
    <br>By clicking on the graphs you will be able to drill down into the data.
    <br>
    """)
    
    components.html("""
    <div class='tableauPlaceholder' id='viz1756065371065' style='position: relative'><noscript><a href='#'><img alt='Deities in the Temple of Kalabsha ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;gr&#47;grafici_divinit&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='grafici_divinit&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;gr&#47;grafici_divinit&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='it-IT' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1756065371065');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1200px';vizElement.style.height='2527px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
    """, height = 2200)

