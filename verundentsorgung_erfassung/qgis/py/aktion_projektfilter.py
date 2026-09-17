codes = []
codes2 = []
codes3 = []
codes4 = None
codes5 = None
codes6 = None

def test():
    from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton, QMessageBox, QCheckBox,QHBoxLayout, QDateEdit
    from PyQt5.QtCore import QDate , Qt
    from qgis.core import Qgis, QgsApplication, QgsAuthMethodConfig, QgsProject ,QgsExpressionContextUtils,QgsVectorLayer,QgsDataSourceUri
    from qgis.utils import iface
    import psycopg2
    import getpass

    class ComboDialog(QDialog):
        def verbindung(self,query):
            global codes, codes2, codes3,codes4

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
            global codes, codes2,codes4
            super().__init__()
            self.checkbox_data = []
            self.zoom_aus = []
            
            projekt_id = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')
          
            
            query = f"""
                    SELECT kurztext, langtext, '' 
                    FROM verundentsorgung.st_vw_projektfilter where id_st_vw_projekt = '{projekt_id}'
                """
            
            self.verbindung(query)

            self.setWindowTitle("Wahl des Gebietes")
            self.setWindowFlags(self.windowFlags() | Qt.WindowStaysOnTopHint)
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

                # if code == "Test", add date field
                if code == "Gültig von":
                    date_edit = QDateEdit()
                    
                    date_edit.setCalendarPopup(True)
                    date_edit.setDate(QDate.currentDate())

                    row.addWidget(date_edit)

                    # Checkbox + Filter + DateWidget speichern
                    self.checkbox_data.append((checkbox, code2, date_edit))
                else:
                    self.checkbox_data.append((checkbox, code2, None))

                layout.addLayout(row)
                
                
            row = QHBoxLayout()    
            global codes4
            codes4 = QCheckBox()
            codes4.setProperty("Zoom_aus", "1")
            
                
            self.label = QLabel("Zoom aus:")
            
            row.addWidget(self.label)
            row.addWidget(codes4)
            
            
              

            row2 = QHBoxLayout()    
            global codes5
            codes5 = QCheckBox()
            codes5.setProperty("Ausgebaut anzeigen", "1")
            
                
            self.label = QLabel("Ausgebaut anzeigen:")
            
            row2.addWidget(self.label)
            row2.addWidget(codes5)
            
            
            layout.addLayout(row2)   

            row3 = QHBoxLayout()    
            global codes6
            codes6 = QCheckBox()
            codes6.setProperty("Verwendung TOPO", "1")
            
                
            self.label = QLabel("Verwendung TOPO:")
            
            row3.addWidget(self.label)
            row3.addWidget(codes6)
            
            
            layout.addLayout(row3) 


            layout.addLayout(row) 

            self.label = QLabel("Bitte das Gebiet wählen:")


            
            
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

            for checkbox, code2, date_edit in self.checkbox_data:
                if checkbox.isChecked():
                    if date_edit:
                        date_str = date_edit.date().toString("yyyy-MM-dd")
                        code2 = code2.replace('$1', date_str)

            #print(code2)

            if auswahl is None:
                QMessageBox.warning(self, "Keine Auswahl", "Bitte ein gültigen Bereich wählen!")
                return
            iface.messageBar().pushMessage("Ausgewählt:", auswahl, level=Qgis.Info, duration=4)
            self.accept()
            QMessageBox.information(self, "Auswahl", f"Ausgewählt: {auswahl}")
            
            projekt = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_kurztext_st_vw_projekt')
            #user_acc = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_anmeldename')
            user_acc = getpass.getuser()
            #print(user_acc)
            
            filter_user = f""" angelegt_von = '{user_acc}' or geaendert_von = '{user_acc}' """
            
            additional_filters = []
            

            
            print(auswahl)
            if auswahl == '1=1':
                filter_expression = '1=1'
                
            elif  auswahl == 'Filter':
                filter_expression = f"""ST_DWithin(geometry,(SELECT ST_SetSRID(geometry, 25833) FROM verundentsorgung.st_fla_filtergebiet where id = '{filtergebiet_id}'), 0.5)"""
            else:
                filter_expression = f"""
                    EXISTS (
                        SELECT 1
                        FROM verundentsorgung.st_vw_projekt p
                        WHERE p.id = id_st_vw_projekt
                        AND p.kurztext = 'ZVG'
                    )

                    -- street filter
                    AND EXISTS (
                        SELECT 1
                        FROM verundentsorgung.strassenschluessel_v s
                        JOIN verundentsorgung.st_vw_projektfilter pf
                        ON s.id_st_vw_projekt = pf.id_st_vw_projekt
                        WHERE s.id_st_strasse = table_name.id_st_strasse
                        AND (
                                (pf.kurztext = '{auswahl}'
                                AND position(s.amt in pf.langtext) > 0)
                            )
                    )
                """
                



            # Add additional filters from checked checkboxes
            additional_filters = []
            for checkbox, code2,date_edit  in self.checkbox_data:
                if checkbox.isChecked():
                    additional_filters.append(f"'{code2}'")  # replace 'feldname' with your actual field

            selected_conditions = []

            for checkbox, code2, date_edit in self.checkbox_data:
                if checkbox.isChecked():
                    if date_edit:
                        date_str = date_edit.date().toString("yyyy-MM-dd")
                        code2 = code2.replace("$1", date_str)

                    selected_conditions.append(code2)


            if additional_filters:
                filter_expression += " AND (" + " and ".join(selected_conditions) + ")"

            #print(filter_expression)
                
    

            banned_layer_name = ['Ortspunkt','gemeindegrenzen_aus_alkis','verbandsgebiet_zvg','LAGE_TXT_ALKIS_MIN','aw_fla_umlageflaeche','Grenzen_Flst_duenn','Grenzen_Flst_dick','GR_IND_GEW_ALKIS_MIN','GEB_TXT_ALKIS_MIN','GEB_PKT_ALKIS_MIN','GEB_GR_ALKIS_MIN','GEB_FLA_ALKIS_MIN','FLST_PKT_UEBHAKEN_ALKIS_MIN','FLST_NR_TXT_ALKIS_MIN','FLST_NR_LIN_ALKIS_MIN','043_ZVG_EIGT_Flst','042_öffentliche_Flst','041_gemeindeeigene_Flst','aw_fla_beitragflaechen','al_fla_koordinatenraster','wa_lin_schutzrohr']
            #'ta_fla_anlagenflaechen','Netz','Netzknoten','Schutzrohr_ta','ta_pkt_label'
            # Loop over all layers in the current project
            for layer in QgsProject.instance().mapLayers().values():
                if layer.isSpatial():  # has geometry
                    lname = layer.name()
                    if lname != 'strassenschluessel_v':
                        if 'label' not in lname.lower() and 'anzeige' not in lname.lower():
                            if lname not in  banned_layer_name:   
                                if  lname.startswith("st_konstruktion") or lname.startswith("st_fla_filtergebiet"):
                                    layer.setSubsetString(filter_user)
                                else:
                                    provider = layer.dataProvider()

                                    uri = QgsDataSourceUri(provider.dataSourceUri())

                                    db_table_name = uri.table()
                                    if db_table_name not in  banned_layer_name: 
                                        filter_expression_r = filter_expression.replace('table_name',db_table_name)
                                        global codes5
                                        if codes5 is not None and  codes5.isChecked() is False:
                                            if layer.type() != layer.VectorLayer:
                                                continue
                                            if layer.fields().lookupField("id_st_vw_betriebsstatus") != -1:

                                                filter_expression_r += """
                                                AND id_st_vw_betriebsstatus NOT IN (
                                                    SELECT id
                                                    FROM verundentsorgung.st_vw_betriebsstatus
                                                    WHERE kurztext IN ('zg')
                                                )
                                                """
                                        try:
                                            layer.setSubsetString(filter_expression_r)
                                        except Exception as e:
                                            print(f"Failed to set subset string: {e}")
                                    
                                    #print(lname)
                                    #print(db_table_name)
                                    #print(filter_expression)
                                    #print('-----------------------------------------------------------------------------------------')
                        else:
                            print(f"Layer {layer.name()} ist kein Vektorlayer, übersprungen")

                    if  auswahl == 'Filter':    
                        if 'label' in  lname:
                            provider = layer.dataProvider()

                            uri = QgsDataSourceUri(provider.dataSourceUri())

                            db_table_name = uri.table()
                            filter_expression_r = filter_expression.replace('table_name',db_table_name)
                            layer.setSubsetString(filter_expression_r)

            global codes6
            if codes6 is not None and codes6.isChecked():
                target_layers = ['ta_fla_anlagenflaechen','Netz','Netzknoten','Schutzrohr_ta','ta_pkt_label']
                new_condition = '"id_st_vw_verwendung" = \'741961cc-28b8-4c45-8dac-e40987e3ae6a\''

                for lname in target_layers:
                    found_layers = QgsProject.instance().mapLayersByName(lname)
                    if found_layers:
                        layer = found_layers[0]
                        if layer.isSpatial():
                            # Get the existing subset string (returns "" if none)
                            current_filter = layer.subsetString()
                            
                            # Safely combine filters
                            if current_filter.strip():
                                combined_filter = f"{current_filter} AND {new_condition}"
                            else:
                                combined_filter = new_condition
                            
                            try:
                                layer.setSubsetString(combined_filter)
                                #print(f"Filter appended to '{lname}':\n   {combined_filter}")
                            except Exception as e:
                                print(f"Failed to apply filter to '{lname}': {e}")
                    else:
                        print(f"Layer '{lname}' not found in the current project.")             
                                
            iface.messageBar().clearWidgets()
            
            
            
            
    
    dlg = ComboDialog()
    iface.messageBar().clearWidgets()
    dlg.exec_()


    from qgis.core import QgsRectangle

    new_extent = QgsRectangle()
    #layer_names = ['Haltung', 'Wasserleitung', 'Kabelnetz', 'Netz']
    layer_names = ['Haltung']
    for name in layer_names:
        layers = QgsProject.instance().mapLayersByName(name)
        if layers:
            layer = layers[0]
            break
    else:
        layer = None  # or handle the case where none of the layers exist
        
                       
    for f in layer.getFeatures():
        new_extent.combineExtentWith(f.geometry().boundingBox())
    new_extent.scale(1.05)


    if not codes4.isChecked():
        iface.mapCanvas().setExtent(new_extent)
    iface.mapCanvas().refresh()
    

test()



