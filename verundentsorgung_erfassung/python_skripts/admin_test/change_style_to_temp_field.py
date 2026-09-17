from qgis.core import QgsProject, QgsProperty

layers = QgsProject.instance().mapLayersByName('Abscheider')

for layer in layers:
    #print(layer.name())

    symbol = layer.renderer().symbol()
    svg_layer = symbol.symbolLayer(0)
    
    svg_layer.setDataDefinedProperty(
        svg_layer.PropertySize,
        QgsProperty.fromExpression('dxf_punkte')
    )
    
    svg_layer.setDataDefinedProperty(
        svg_layer.PropertyStrokeColor,
        QgsProperty.fromExpression('dxf_farbe')
    )
    
    svg_layer.setDataDefinedProperty(
        svg_layer.PropertyFile,
        QgsProperty.fromExpression('dxf_symbol')
    )
    
    svg_layer.setDataDefinedProperty(
        svg_layer.PropertyFillColor,
        QgsProperty.fromExpression('dxf_auffarbe')
    )    
    
