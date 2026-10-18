##########TAB ROOM
#   with tab1:
#         st.header("Room type")
#         st.html("""In this tab you can search through the database by room type.
#                 <br>The temple of Kalabsha is composed by these rooms (from the inside to the outside,
#                 the descriprion order used by Henri Gauthier in his book):<br>
#                 - Sanctuary (Cella of Gauthier)<br>
#                 - Inner vestibule (Procella of Gauthier)<br>
#                 - Outer vestibule (Antechamber of Gauthier)<br>
#                 - Hypostyle (Pronaos of Gauthier)<br>
#                 - Forecourt<br>
#                 - Pylon""")
#  codice_scena = st.text_input("Scene code")
#         st.write("You selected:", codice_scena)
        
#         if codice_scena == 'KB1':
#             numero_scena = st.selectbox("Select the scene:", ["KB1", "KB2", "KB3",
#                                                           "KB4", "KB5", "KB6", "KB7", "KB8",
#                                                           "KB9", "KB10", "KB11", "KB12", "KB13",
#                                                           "KB14", "KB15", "KB16", "KB17", "KB18", "KB19",
#                                                           "KB20", "KB21", "KB22", "KB23", "KB24", "KB25",
#                                                           "KB26", "KB27", "KB28", "KB29", "KB30"])
#             st.write("You selected:", numero_scena)
#         elif nome_stanza == 'Inner Vestibule':
#             numero_scena = st.selectbox('Select the scene:', ["KB31", "KB32"])
#             st.write("You selected:", numero_scena)
        
#         if st.button("Search"):
#     #     res = model_pipe.predict(input_df).astype(int)[0]
#             cursor.execute("""select *
#                             from personaggio p
#                             join scena s
#                             on p.codice_scena = s.codice_scena
#                             join parte par
#                             on s.codice_parte = par.codice_parte
#                             join elemento_architettonico ea
#                             on ea.codice_e_a = par.codice_e_a
#                             join ambiente a
#                             on a.codice_ambiente = ea.codice_ambiente
#                             where tipo_ambiente = 'cella' and sigla_scena = 'KB1'""")
#             data = cursor.fetchall()
#             df = pd.DataFrame(data, columns = cursor.column_names)
#             df = df.loc[:,~df.columns.duplicated()].copy()
#             st_df = st.dataframe(df, hide_index=True)
#             print(st_df)

#         #Seleziono dati da una delle colonne della tabella che ho selezionato
#         st.write(df)