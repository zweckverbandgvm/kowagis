codes = []
codes2 = []

def openProject():
    from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton, QMessageBox
    from qgis.core import Qgis, QgsApplication, QgsAuthMethodConfig,QgsProject 
    from qgis.gui import QgsAuthConfigSelect
    from qgis.utils import iface
    import psycopg2


    
    
    
    class ComboDialog(QDialog):


        def verbindung(self):
            layer_name = "Projektfilter"
            layer = QgsProject.instance().mapLayersByName(layer_name)[0]
            if not layer:
                raise Exception("Projektfilter Layer nicht gefunden")

            dp = layer.dataProvider().uri()
            auth_mgr = QgsApplication.authManager() 
            auth_cfg = QgsAuthMethodConfig()
            if auth_mgr.loadAuthenticationConfig(dp.authConfigId(), auth_cfg, True):
                iface.messageBar().pushMessage("Authentication config loaded successfully.", level=Qgis.Info)  
                config_map = auth_cfg.configMap()
                iface.messageBar().pushMessage(f"Config Map: {config_map}", level=Qgis.Info)
                #print(config_map)
                user_pg = config_map.get('username')
                password_pg = config_map.get('password')

            # -------------------- Erste DB-Abfrage: Label-Definition laden --------------------
            try:
                connection = psycopg2.connect(
                    host=dp.host(),
                    database=dp.database(),
                    port=dp.port(),
                    user=user_pg,
                    password=password_pg
                )
                cursor = connection.cursor()

                query = f"""
                    SELECT kurztext, langtext 
                    FROM verundentsorgung.st_vw_projektfilter
                    where id_st_vw_projekt = '00000000-0000-0000-0000-000000000001'
                """
                cursor.execute(query)
                records = cursor.fetchall()
                print("Data retrieved from the table:", records)
                if records:
                    codes = [row[0] for row in records]
                    codes2 = [row[1] for row in records]
                else:
                    codes = []
                    codes2 = []
                    print("Warnung: Keine Gebiete gefunden")

            except Exception as error:
                print("Error while connecting to PostgreSQL:", error)
                codes = []
                codes2 = []
            finally:
                if 'cursor' in locals() and cursor:
                    cursor.close()
                if 'connection' in locals() and connection:
                    connection.close()
                    print("PostgreSQL connection closed.")
    
    
        def __init__(self):
            global codes, codes2
            super().__init__()
            self.verbindung()

            self.setWindowTitle("Wahl des Gebietes")
            self.setMinimumWidth(300)

            layout = QVBoxLayout()
            self.label = QLabel("Bitte das Gebiet wählen:")
            layout.addWidget(self.label)
            self.combo = QComboBox()
            if codes and codes2:
                for code, label in zip(codes, codes2):
                    self.combo.addItem(label, code)
            else:
                self.combo.addItem("Kein Gebiet gefunden", None)
            self.combo.addItem('Test', 'test')
            layout.addWidget(self.combo)
            btn = QPushButton("Auswahl bestätigen")
            btn.clicked.connect(self.auswahl_bestaetigen)
            layout.addWidget(btn)
            
            self.setLayout(layout)
            
            
        def auswahl_bestaetigen(self):
            auswahl = self.combo.currentData()
            if auswahl is None:
                QMessageBox.warning(self, "Keine Auswahl", "Bitte ein gültigen Bereich wählen!")
                return
            iface.messageBar().pushMessage("Ausgewählt:", auswahl, level=Qgis.Info, duration=4)
            self.accept()
            QMessageBox.warning(self, auswahl, auswahl)


    dlg = ComboDialog()
    dlg.exec_()    
    
    pass

def saveProject():
    pass

def closeProject():
    pass
    
    
    
    
