from qgis.core import QgsProject, QgsLayerTreeGroup, QgsDataSourceUri

def layers_in_group(group_name):
    root = QgsProject.instance().layerTreeRoot()
    group = root.findGroup(group_name)
    if not group:
        return []

    return [node.layer() for node in group.findLayers()]
    
#Gruppenname mit dem Layern mit den Objekten wie Haltung oder Schacht
layers = layers_in_group("WA_GEOM_FREMD")
#Name des Grund Labellayers
grund_layer = "Label_fremd"    




project = QgsProject.instance()

for layer  in reversed(list(project.mapLayers().values())):
    if layer.name() == grund_layer:

        # Base SQL from the original layer
        base_uri = QgsDataSourceUri(layer.publicSource())
        base_sql = base_uri.sql()

        for lyr in reversed(list(layers)):
            quelle = QgsDataSourceUri(lyr.source())

           
            new_layer = layer.clone()
            new_layer.setName(f"{lyr.name()} Label")

            # Build new SQL
            new_sql = f"""
{base_sql}
and '{quelle.table()}' LIKE (layout->> 'table_name' || '%')
"""

            # Apply SQL to the cloned layer
            new_uri = QgsDataSourceUri(new_layer.source())
            new_uri.setSql(new_sql)
            new_layer.setDataSource(
                new_uri.uri(False),
                new_layer.name(),
                new_layer.providerType()
            )

            if new_layer.isValid():
                project.addMapLayer(new_layer)
