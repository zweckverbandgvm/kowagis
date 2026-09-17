from qgis.utils import iface
from qgis.core import QgsApplication, QgsAuthMethodConfig, Qgis,QgsProject
from qgis.gui import QgsMapToolEmitPoint
from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton,QMessageBox
from qgis.PyQt.QtCore import Qt
def show_documents():
    global v_id_param
    layer = QgsProject.instance().mapLayersByName("st_dokument")[0]

    if not layer.isEditable():

        # Filter setzen: nur Zeilen mit Kurztext = 'Haltung'
        v_id_param = v_id_param.replace("'", "")
        layer.setSubsetString(f'"id_objekt" = \'{v_id_param}\'')

        #layer.selectByExpression("\"id_objekt\" = '[%id%]'")

        # Attributtabelle anzeigen
        iface.showAttributeTable(layer)
        #layer.setSubsetString('')
    else:

        msg = QMessageBox(iface.mainWindow()) 
        msg.setIcon(QMessageBox.Warning)
        msg.setWindowTitle("Layer bearbeitbar") 
        msg.setText( "st_dokument kann nicht neu eingeschränkt werden, " "da der Layer derzeit bearbeitbar ist." ) 
        save_btn = msg.addButton("Speichern", QMessageBox.AcceptRole) 
        discard_btn = msg.addButton("Verwerfen", QMessageBox.DestructiveRole) 
        cancel_btn = msg.addButton("Abbrechen", QMessageBox.RejectRole)


        msg.exec_()

        if msg.clickedButton() == save_btn:
            if not layer.commitChanges():
                iface.messageBar().pushMessage(
                    "Fehler",
                    "Änderungen konnten nicht gespeichert werden.",
                    level=Qgis.Critical,
                    duration=5
                )
                return

        elif msg.clickedButton() == discard_btn:
            layer.rollBack()

        else:
            # Abbrechen
            return

        v_id_param = v_id_param.replace("'", "")
        layer.setSubsetString(f'"id_objekt" = \'{v_id_param}\'')

        iface.showAttributeTable(layer)     


show_documents()