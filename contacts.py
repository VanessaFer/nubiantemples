import streamlit as st
#pip install mysql-connector-python

def app():

    st.header("Contacts")
    st.write("""
             Hi everyone! It's Vanessa here.

             I'd like to inform you that this project is a work in progress. 
             If you would like to contribute with advices or additional information,
             please feel free to send an e-mail: I'll definetely be glad to read from you!
""")
    
    st.write("Project's e-mail address:")
    st.markdown('<a href="mailto:nubiantemples.project@gmail.com">nubiantemples.project@gmail.com</a>', 
                unsafe_allow_html=True)
