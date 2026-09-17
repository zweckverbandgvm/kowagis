from qgis.core import QgsProject

FILTER = '"id_st_vw_projekt" = \'00000000-0000-0000-0000-000000000003\''
FIELD = "id_st_strasse"

for layer in QgsProject.instance().mapLayers().values():
    # Nur Vektorlayer
    if not hasattr(layer, "fields"):
        continue

    # Prüfen, ob id_st_strasse vorhanden ist
    if layer.fields().indexOf(FIELD) != -1:
        layer.setSubsetString(FILTER)
        print(f"Filter gesetzt: {layer.name()}")