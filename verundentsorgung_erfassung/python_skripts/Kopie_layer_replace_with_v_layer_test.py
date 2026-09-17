from qgis.core import QgsVectorLayer, QgsProject, QgsDataSourceUri

project = QgsProject.instance()

for layer in list(project.mapLayers().values()):
    if not layer.isSpatial():
        lname = layer.name()
        if lname.endswith("Kopie"):
            uri = QgsDataSourceUri(layer.publicSource())

                    new_table = uri.table() + "_v"

                    uri.setDataSource(
                        uri.schema(),
                        new_table,
                        uri.geometryColumn(),
                        uri.sql(),
                        uri.keyColumn()
                    )


                    new_name = layer.name().replace(" Kopie", "_v")

                    new_layer = QgsVectorLayer(
                        uri.uri(False),
                        new_name,
                        layer.providerType()
                    )

                    if new_layer.isValid():
                        project.addMapLayer(new_layer)
                        project.removeMapLayer(layer.id())