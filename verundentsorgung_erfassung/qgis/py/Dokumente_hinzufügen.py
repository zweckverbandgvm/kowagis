from qgis.utils import iface
from qgis.core import QgsProject, QgsFeature
from qgis.gui import QgsAttributeDialog
from PyQt5.QtWidgets import QMessageBox

# Beispielwert (bitte durch deinen Wert ersetzen)
#v_id_param = "dein_id_wert"
v_id_param = v_id_param.replace("'", "")  # entfernen falls nötig

layer = QgsProject.instance().mapLayersByName("st_dokument")[0]

if not layer.isEditable():
    layer.startEditing()

# Neues Feature mit der Definition des Layers erstellen
feature = QgsFeature(layer.fields())

# Standardwerte setzen
for idx in range(layer.fields().count()):
    default_value = layer.defaultValue(idx)
    feature.setAttribute(idx, default_value)

# Attribut "id_objekt" setzen, existenz prüfen
if "id_objekt" in [field.name() for field in layer.fields()]:
    feature.setAttribute("id_objekt", v_id_param)
else:
    QMessageBox.warning(None, "Warnung", "Attribut 'id_objekt' nicht im Layer vorhanden!")

# Erstelle und öffne das Attribut-Dialogfenster für die Neueingabe
form = QgsAttributeDialog(layer, feature, False)

if form.exec_():
    updated_feature = form.feature()
    if layer.addFeature(updated_feature):
        layer.commitChanges()
        layer.triggerRepaint()
        print("✔️ Feature added and saved.")
    else:
        layer.rollBack()
        print("❌ Failed to add feature.")
else:
    layer.rollBack()
    print("⚠️ User canceled the form.")