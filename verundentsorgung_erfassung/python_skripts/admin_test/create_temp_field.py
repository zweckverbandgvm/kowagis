from qgis.PyQt.QtCore import QVariant
from qgis.core import QgsField


#layers = QgsProject.instance().mapLayersByName('Verbindungen')
#for layer in layers:
layer_list = []

for layer in QgsProject.instance().mapLayers().values():
    if not isinstance(layer, QgsVectorLayer):
            continue
    if layer.isSpatial():
        provider = layer.dataProvider()

        uri = QgsDataSourceUri(provider.dataSourceUri())

        db_table_name = uri.table()
        
        if "_pkt_"  in db_table_name.lower():
            if "label" not in layer.name().lower():
                
                print(db_table_name)
                
                layer.addExpressionField(
                    """
                    map_get(layout, 'hex_pkt_stroke_color')
                    """,
                    QgsField("dxf_farbe", QVariant.String)
                )
                
                layer.addExpressionField(
                    """
                    map_get(layout, 'pkt_stroke_with')
                    """,
                    QgsField("dxf_punkte", QVariant.String)
                )
                
                layer.addExpressionField(
                    """
                    'U:/intern/verundentsorgung_erfassung/qgis/svg/'||map_get(layout, 'pkt_symbolname')||'.svg'
                    """,
                    QgsField("dxf_symbol", QVariant.String)
                )
                
                
                layer.addExpressionField(
                    """
                    map_get(layout, 'hex_pkt_fill_color')
                    """,
                    QgsField("dxf_auffarbe", QVariant.String)
                )
                
                layer_list.append(layer.name())
                
                
print(layer_list)                

for layer_name in layer_list:
    
    
    layers = QgsProject.instance().mapLayersByName(layer_name)
    if not layers:
        continue

    for layer in layers:
        

        provider = layer.dataProvider()

        uri = QgsDataSourceUri(provider.dataSourceUri())

        db_table_name = uri.table()
        if "_pkt_"  in db_table_name.lower():

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
                
            
