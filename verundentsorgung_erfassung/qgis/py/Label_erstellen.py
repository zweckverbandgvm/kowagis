from qgis.utils import iface
from qgis.core import QgsApplication, QgsAuthMethodConfig, Qgis, QgsExpressionContextUtils,QgsProject
from qgis.gui import QgsMapToolEmitPoint, QgsMapToolIdentifyFeature
from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton, QMessageBox
from qgis.PyQt.QtCore import Qt, QObject
import psycopg2

# -------------------- Globale Variablen --------------------
vzaehler = None
vid = None
vname_number = None
vtable = None
vlabel_id = None
vpoint1x = None
vpoint1y = None
vpoint2x = None
vpoint2y = None
codes = []
codes2 = []
vid_projekt = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')

# -------------------- Layer-Infos holen --------------------




layer = iface.activeLayer()
tool = QgsMapToolIdentifyFeature(iface.mapCanvas())
tool.featureIdentified.connect(lambda f: print(f.layer().name(), f.id()))
iface.mapCanvas().setMapTool(tool)
print('test')

if not layer:
    raise Exception("Kein aktiver Layer ausgewählt!")

dp = layer.dataProvider().uri()

auth_mgr = QgsApplication.authManager()
auth_cfg = QgsAuthMethodConfig()

user_pg = None
password_pg = None
auth_cfg_id = layer.customProperty("authcfg")
if auth_cfg_id and auth_mgr.loadAuthenticationConfig(auth_cfg_id, auth_cfg, True):
    config_map = auth_cfg.configMap()
    user_pg = config_map.get('username')
    password_pg = config_map.get('password')

auth_cfg_id = dp.authConfigId()  # statt layer.customProperty("authcfg")

if auth_cfg_id and auth_mgr.loadAuthenticationConfig(auth_cfg_id, auth_cfg, True):
    config_map = auth_cfg.configMap()
    user_pg = config_map.get('username') or dp.username()
    password_pg = config_map.get('password') or dp.password()
else:
    user_pg = dp.username()
    password_pg = dp.password()

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

    context = QgsExpressionContextUtils.layerScope(layer)
    

    query = f"""
        SELECT kurztext, langtext 
        FROM verundentsorgung.st_vw_label_definition_v 
        WHERE table_name = {vtable_org} and id_st_vw_projekt = '{vid_projekt}' order  by sortierreihenfolge
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
        print("Warnung: Keine Label-Definitionen gefunden!")

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

canvas = iface.mapCanvas()

# -------------------- MapTool Klasse --------------------
class PointTool(QgsMapToolEmitPoint):
    def __init__(self, canvas, callback):
        super().__init__(canvas)
        self.canvas = canvas
        self.callback = callback

    def canvasPressEvent(self, event):
        point = self.toMapCoordinates(event.pos())
        self.callback(point)

# -------------------- Callback für ersten Klick --------------------
def show_mouse_coords(point):
    global vid, vname_number, vtable, vpoint1x, vpoint1y, vzaehler, pointTool2
    print('Erster Punkt: ({:.4f}, {:.4f})'.format(point.x(), point.y()))

    if vzaehler is None:
        # Platzhalter: hier ggf. durch echte Layer-Attribute ersetzen
        layer = iface.activeLayer()
        context = QgsExpressionContextUtils.layerScope(layer)

        vid = vid_param
        vname_number = vname_number_param
        vtable = f"'{dp.table()}'"
        vpoint1x = f"'{point.x():.4f}'"
        vpoint1y = f"'{point.y():.4f}'"
        vzaehler = 1

        # Setze neues MapTool für zweiten Klick
        pointTool2 = PointTool(canvas, show_mouse_coords2)
        canvas.setMapTool(pointTool2)

# -------------------- Callback für zweiten Klick --------------------
def show_mouse_coords2(point):
    global vpoint2x, vpoint2y
    print('Zweiter Punkt: ({:.4f}, {:.4f})'.format(point.x(), point.y()))
    vpoint2x = f"'{point.x():.4f}'"
    vpoint2y = f"'{point.y():.4f}'"

    print(vid, vname_number, vtable, vlabel_id, vpoint1x, vpoint1y, vpoint2x, vpoint2y)
    verbindung(vid, vname_number, vtable, vlabel_id, vpoint1x, vpoint1y, vpoint2x, vpoint2y)

# -------------------- PostgreSQL-Verbindung --------------------
def verbindung(vid, vname_number, vtable, vlabel_id, vpoint1x, vpoint1y, vpoint2x, vpoint2y):
    auth_mgr = QgsApplication.authManager()
    auth_cfg = QgsAuthMethodConfig()
    user_pg = None
    password_pg = None
    auth_cfg_id = layer.customProperty("authcfg")
    if auth_cfg_id and auth_mgr.loadAuthenticationConfig(auth_cfg_id, auth_cfg, True):
        config_map = auth_cfg.configMap()
        user_pg = config_map.get('username')
        password_pg = config_map.get('password')

    auth_cfg_id = dp.authConfigId()  # statt layer.customProperty("authcfg")

    if auth_cfg_id and auth_mgr.loadAuthenticationConfig(auth_cfg_id, auth_cfg, True):
        config_map = auth_cfg.configMap()
        user_pg = config_map.get('username') or dp.username()
        password_pg = config_map.get('password') or dp.password()
    else:
        user_pg = dp.username()
        password_pg = dp.password()

    try:
        connection = psycopg2.connect(
            host=dp.host(), database=dp.database(), port=dp.port(),
            user=user_pg, password=password_pg
        )
        cursor = connection.cursor()

        context = QgsExpressionContextUtils.layerScope(layer)

        query = f"""
            SELECT verundentsorgung.label_erfassen(
                {vid}, {vname_number}, {vtable_org}, {vlabel_id},
                {vpoint1x}, {vpoint1y}, {vpoint2x}, {vpoint2y}, '{vid_projekt}'::uuid
            )
        """
        print("SQL Query:", query)
        cursor.execute(query)
        connection.commit()
        try:
            results = cursor.fetchall()
        except Exception:
            results = None  # z.B. für VOID-Funktionsrückgabewerte
        print("Ergebnisse:", results)
        iface.messageBar().pushMessage("Daten geladen.", level=Qgis.Info)
    except Exception as e:
        print(f"Fehler bei der DB-Abfrage: {e}")
    finally:
        if 'cursor' in locals() and cursor:
            cursor.close()
        if 'connection' in locals() and connection:
            connection.close()
        cleanup()

def cleanup():
    global vzaehler, vpoint1x, vpoint1y, vpoint2x, vpoint2y, pointTool2
    vzaehler = None
    vpoint1x = None
    vpoint1y = None
    vpoint2x = None
    vpoint2y = None

    print("Aufräumen abgeschlossen.")
    iface.mapCanvas().refreshAllLayers()
    iface.messageBar().pushMessage("Fertig", "Vorgang beendet", level=Qgis.Success, duration=3)
    canvas.unsetMapTool(canvas.mapTool())

# -------------------- Dialog zur Auswahl --------------------
class ComboDialog(QDialog):
    def __init__(self):
        global codes, codes2
        super().__init__()
        self.setWindowTitle("Wähle ein Label")
        self.setMinimumWidth(300)

        layout = QVBoxLayout()
        self.label = QLabel("Bitte ein Label wählen:")
        layout.addWidget(self.label)
        self.combo = QComboBox()
        if codes and codes2:
            for code, label in zip(codes, codes2):
                self.combo.addItem(label, code)
        else:
            self.combo.addItem("Keine Labels gefunden", None)
        layout.addWidget(self.combo)
        btn = QPushButton("Auswahl bestätigen")
        btn.clicked.connect(self.auswahl_bestaetigen)
        layout.addWidget(btn)
        self.setLayout(layout)

    def auswahl_bestaetigen(self):
        global vlabel_id
        auswahl = self.combo.currentData()
        if auswahl is None:
            QMessageBox.warning(self, "Keine Auswahl", "Bitte ein gültiges Label wählen!")
            return
        vlabel_id = f"'{auswahl}'"
        iface.messageBar().pushMessage("Ausgewählt:", auswahl, level=Qgis.Info, duration=4)
        self.accept()
        self.pointTool1 = PointTool(canvas, show_mouse_coords)
        canvas.setMapTool(self.pointTool1)
        print("Bitte klicken Sie auf den ersten Punkt.")

# -------------------- Dialog starten --------------------
dlg = ComboDialog()
dlg.exec_()
