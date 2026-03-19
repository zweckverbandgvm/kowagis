from qgis.utils import iface
from qgis.core import QgsApplication, QgsAuthMethodConfig, Qgis
from qgis.gui import QgsMapToolEmitPoint
from PyQt5.QtWidgets import QDialog, QVBoxLayout, QLabel, QComboBox, QPushButton
from qgis.PyQt.QtCore import Qt
layer = QgsProject.instance().mapLayersByName("st_dokument")[0]

# Filter setzen: nur Zeilen mit Kurztext = 'Haltung'
v_id_param = v_id_param.replace("'", "")
layer.setSubsetString(f'"id_objekt" = \'{v_id_param}\'')

#layer.selectByExpression("\"id_objekt\" = '[%id%]'")

# Attributtabelle anzeigen
iface.showAttributeTable(layer)
#layer.setSubsetString('')