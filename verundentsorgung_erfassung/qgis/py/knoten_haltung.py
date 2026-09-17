from qgis.utils import iface
from qgis.core import QgsProject, QgsFeatureRequest
import time

def open_attribute_form(name_number_value, v_layer_name):
    # All layers with that name
    start = time.time()
    layers = QgsProject.instance().mapLayersByName(v_layer_name)
    
    if not layers:
        raise Exception(f"No layer named '{v_layer_name}' found!")

    feat = None
    target_layer = None

    # Search across ALL matching layers (fast with filter)
    for layer in layers:
        request = QgsFeatureRequest().setFilterExpression(
            f'"name_number" = \'{name_number_value}\''
        )

        for f in layer.getFeatures(request):
            feat = f
            target_layer = layer
            break

        if feat:
            break

    if not feat:
        raise Exception(f"No feature with name_number '{name_number_value}' gefunden!")

    #print(f"Formular für Feature {feat.id()} in Layer '{target_layer.name()}' wird geöffnet …")

    # MapTools deaktivieren (verhindert UI-Probleme)
    iface.mapCanvas().unsetMapTool(iface.mapCanvas().mapTool())
    end = time.time()
    print(f"{end - start:.2f} Sekunden zum finden der Daten")

    # Formular öffnen
    #print("Vor Formularaufruf")
    start = time.time()

    iface.openFeatureForm(target_layer, feat, True)

    end = time.time()
    print(f"Formular war nach {end - start:.2f} Sekunden geschlossen")