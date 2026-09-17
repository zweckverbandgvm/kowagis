from qgis.core import QgsVectorLayer,QgsProject

project = QgsProject.instance()

for layer in project.mapLayers().values():
    if isinstance(layer, QgsVectorLayer):   # nur Vektorlayer
        for i, field in enumerate(layer.fields()):
            default = layer.defaultValueDefinition(i)
            if field.name().startswith("id_st_vw"):
                if default.expression() and not default.expression().startswith("@"):
                    print(layer.name(), field.name(), "→", default.expression())
