from qgis.core import QgsVectorLayer
import psycopg2


def postgres_con(layer_name,sql,layer_host,layer_database):
    auth_mgr = QgsApplication.authManager()
    auth_cfg = QgsAuthMethodConfig()
    if auth_mgr.loadAuthenticationConfig(self.anmeldung.configId(), auth_cfg, True):
        #iface.messageBar().pushMessage("Authentication config loaded successfully.", level=Qgis.Info)  
        config_map = auth_cfg.configMap()
        user_pg = config_map.get('username')
        password_pg = config_map.get('password')
    try:
        # Establish a connection to the PostgreSQL database
        connection = psycopg2.connect(
        host=layer_host,
        database=layer_database,
        user=user_pg,
        password=password_pg
        )
        cursor = connection.cursor()
        cursor.execute(sql)
        results = cursor.fetchall()
        connection.close() 
        
    finally:
        return results
        
        
project = QgsProject.instance()

for layer in project.mapLayers().values():
    if isinstance(layer, QgsVectorLayer):   # nur Vektorlayer
        for i, field in enumerate(layer.fields()):
            default = layer.defaultValueDefinition(i)
            if field.name().startswith("id_st_vw"):
                if default.expression() and not default.expression().startswith("@"):
                    print(layer.name(), field.name(), "→", default.expression())
                    lname = layer.name()
                    uri = QgsDataSourceUri(layer.publicSource())
                    print(uri.table())
                    print(uri.schema())
                    print(uri.database())
                    
                    
                    
