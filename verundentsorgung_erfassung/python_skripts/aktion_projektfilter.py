codes = []
codes2 = []
codes3 = []

def test():
    from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton, QMessageBox, QCheckBox,QHBoxLayout
    from qgis.core import Qgis, QgsApplication, QgsAuthMethodConfig, QgsProject ,QgsExpressionContextUtils,QgsVectorLayer
    from qgis.utils import iface
    import psycopg2
    import getpass

    class ComboDialog(QDialog):
        def verbindung(self,query):
            global codes, codes2, codes3

            layer_name = "Projektfilter"
            layers = QgsProject.instance().mapLayersByName(layer_name)
            if not layers:
                raise Exception("Projektfilter Layer nicht gefunden")
            layer = layers[0]

            dp = layer.dataProvider().uri()
            auth_mgr = QgsApplication.authManager() 
            auth_cfg = QgsAuthMethodConfig()
            if auth_mgr.loadAuthenticationConfig(dp.authConfigId(), auth_cfg, True):
                iface.messageBar().pushMessage("Authentication config loaded successfully.", level=Qgis.Info)  
                config_map = auth_cfg.configMap()
                user_pg = config_map.get('username')
                password_pg = config_map.get('password')

            try:
                connection = psycopg2.connect(
                    host=dp.host(),
                    database=dp.database(),
                    port=dp.port(),
                    user=user_pg,
                    password=password_pg
                )
                cursor = connection.cursor()


                cursor.execute(query)
                records = cursor.fetchall()

                if records:
                    codes = [row[0] for row in records]
                    codes2 = [row[1] for row in records]
                    codes3 = [row[2] for row in records]
                else:
                    codes, codes2, codes3 = [], [], []
                    iface.messageBar().pushWarning("Keine Daten gefunden")

            except Exception as error:
                print("Error while connecting to PostgreSQL:", error)
                codes, codes2 = [], []
            finally:
                if 'cursor' in locals() and cursor:
                    cursor.close()
                if 'connection' in locals() and connection:
                    connection.close()

        def __init__(self):
            global codes, codes2
            super().__init__()
            self.checkbox_data = []
            
            projekt_id = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')
          
            
            query = f"""
                    SELECT kurztext, langtext, '' 
                    FROM verundentsorgung.st_vw_projektfilter where id_st_vw_projekt = '{projekt_id}'
                """
            
            self.verbindung(query)

            self.setWindowTitle("Wahl des Gebietes")
            self.setMinimumWidth(300)

            layout = QVBoxLayout()
            self.label = QLabel("Bitte das Gebiet wählen:")
            layout.addWidget(self.label)

            self.combo = QComboBox()
            self.combo.currentTextChanged.connect(self.toggle_filtergebiet)
            if codes and codes2:
                for code, label in zip(codes, codes2):
                    self.combo.addItem(code, code)
                self.combo.addItem('Alles', '1=1')
                self.combo.addItem('Filter', 'Filter')    
            else:
                self.combo.addItem("Kein Gebiet gefunden", None)
            layout.addWidget(self.combo)
                   
            
            projekt_id = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')
          
            
            query = f"""
                    SELECT kurztext, filtertext , langtext
                    FROM verundentsorgung.st_vw_hilfsfilter
                    WHERE id_st_vw_projekt = '{projekt_id}'
                """
            
            self.verbindung(query)
            
            for code, code2, code3 in zip(codes, codes2, codes3):
                row = QHBoxLayout()

                label = QLabel(str(code))
                label.setToolTip(str(code3))

                checkbox = QCheckBox()
                row.addWidget(label)
                row.addWidget(checkbox)
                layout.addLayout(row)

                # store checkbox and associated value
                self.checkbox_data.append((checkbox, code2))
                


            
            self.label = QLabel("Bitte das Filtergebiet wählen:")
            layout.addWidget(self.label)

            projekt_id = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')
          

            query = f"""
                    SELECT id , langtext,''
                    FROM verundentsorgung.st_fla_filtergebiet
                """
            
            self.verbindung(query)

            self.combo2 = QComboBox()
            
            if codes and codes2:
                for code, label in zip(codes, codes2):
                    self.combo2.addItem(label, code)  
            else:
                self.combo2.addItem("Kein Filtergebiet gefunden", None)
            layout.addWidget(self.combo2)
            self.combo2.setVisible(False)
            self.label.setVisible(False)





            btn = QPushButton("Auswahl bestätigen")
            btn.clicked.connect(self.auswahl_bestaetigen)
            layout.addWidget(btn)


            self.setLayout(layout)

        def toggle_filtergebiet(self, text):
            visible = (text == "Filter")
            self.combo2.setVisible(visible)
            self.label.setVisible(visible)   

        def auswahl_bestaetigen(self):
            auswahl = self.combo.currentData()
            filtergebiet_id = self.combo2.currentData()
            if auswahl is None:
                QMessageBox.warning(self, "Keine Auswahl", "Bitte ein gültigen Bereich wählen!")
                return
            iface.messageBar().pushMessage("Ausgewählt:", auswahl, level=Qgis.Info, duration=4)
            self.accept()
            QMessageBox.information(self, "Auswahl", f"Ausgewählt: {auswahl}")
            
            projekt = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_kurztext_st_vw_projekt')
            #user_acc = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_anmeldename')
            user_acc = getpass.getuser()
            print(user_acc)
            
            filter_user = f""" angelegt_von = '{user_acc}' or geaendert_von = '{user_acc}' """
            
            additional_filters = []
            
            
            print(auswahl)
            if auswahl == '1=1':
                filter_expression = '1=1'
                
            elif  auswahl == 'Filter':
                filter_expression = f"""ST_DWithin(geometry,(SELECT ST_SetSRID(geometry, 25833) FROM verundentsorgung.st_fla_filtergebiet where id = '{filtergebiet_id}'), 0.5)"""
            else:
                filter_expression = f"""
                exists (
                    select 'X'
                    from verundentsorgung.st_vw_projekt p
                    where p.id = id_st_vw_projekt and p.kurztext = '{projekt}'
                )
                and id_st_strasse in (
                    select s.id_st_strasse
                    from verundentsorgung.strassenschluessel_v s,
                    verundentsorgung.st_vw_projektfilter pf
                    where s.id_st_vw_projekt = pf.id_st_vw_projekt
                    and ( ( position(s.amt in pf.langtext) > 0
                            and pf.kurztext = '{auswahl}'
                          )
                          or s.amt = 'unbekannt'
                        )
                )
                and 1 = 1
                """

            # Add additional filters from checked checkboxes
            additional_filters = []
            for checkbox, code2 in self.checkbox_data:
                if checkbox.isChecked():
                    additional_filters.append(f"'{code2}'")  # replace 'feldname' with your actual field

            selected_conditions = [code2 for checkbox, code2 in self.checkbox_data if checkbox.isChecked()]


            if additional_filters:
                filter_expression += " AND (" + " and ".join(selected_conditions) + ")"

            print(filter_expression)
                
    


            # Loop over all layers in the current project
            for layer in QgsProject.instance().mapLayers().values():
                if layer.isSpatial():  # has geometry
                    lname = layer.name()
                    if lname != "aw_pkt_label":
                        if  lname.startswith("st_konstruktion") or lname.startswith("st_fla_filtergebiet"):
                            layer.setSubsetString(filter_user)
                        else:
                            layer.setSubsetString(filter_expression)
                    else:
                        print(f"Layer {layer.name()} ist kein Vektorlayer, übersprungen")
                    
            iface.messageBar().clearWidgets()


    dlg = ComboDialog()
    iface.messageBar().clearWidgets()
    dlg.exec_()

test()



