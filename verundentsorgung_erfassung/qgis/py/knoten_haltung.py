from qgis.utils import iface
from qgis.core import QgsProject
import time

def open_attribute_form(name_number_value, v_layer_name):
    # Layer holen
    layers = QgsProject.instance().mapLayersByName(v_layer_name)
    if not layers:
        raise Exception(f"No layer named '{v_layer_name}' found!")
    layer = layers[0]

    # Feature suchen
    feat = None
    for f in layer.getFeatures():
        if f['name_number'] == name_number_value:
            feat = f
            break

    if not feat:
        raise Exception(f"No feature with name_number '{name_number_value}' gefunden!")

    print(f"Formular für Feature {feat.id()} wird geöffnet …")

    # MapTools zuerst deaktivieren (sonst hängt QGIS manchmal)
    iface.mapCanvas().unsetMapTool(iface.mapCanvas().mapTool())

    # Formular öffnen (blockiert NICHT)
    print("Vor Formularaufruf")
    start = time.time()
    iface.openFeatureForm(layer, feat, True)
    end = time.time()
    print(f"Formular war nach {end-start:.2f} Sekunden geschlossen")
