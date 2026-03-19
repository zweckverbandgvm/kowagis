from qgis.core import QgsVectorLayer, QgsDataSourceUri, QgsProject, QgsApplication, QgsAuthMethodConfig,QgsExpressionContextUtils
from qgis.utils import iface
from PyQt5.QtWidgets import QApplication
import psycopg2

import os



# Your script code here

# Funktion zum Abfragen von Postgres
def postgres_con(sql, host, db, user, password):
    results = []
    try:
        connection = psycopg2.connect(host=host, database=db, user=user, password=password)
        cursor = connection.cursor()
        cursor.execute(sql)
        results = cursor.fetchall()
        connection.close()
    except Exception as e:
        print("Postgres error:", e)
    return results


# Projekt durchlaufen
project = QgsProject.instance()

vars = project.customVariables()

# Update or add new ones
vars["verundentsorgung_kurztext_st_vw_projekt"] = "ZKWAL"
vars["verundentsorgung_langtext_st_vw_projekt"] = "ZKWAL"
vars["verundentsorgung_id_st_vw_projekt"] = "00000000-0000-0000-0000-000000000003"

# Save back
project.setCustomVariables(vars)

projekt_id = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_id_st_vw_projekt')
projekt_kurz = QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable('verundentsorgung_kurztext_st_vw_projekt')

for layer in project.mapLayers().values():
    if layer.name() =='Projektfilter':
        filter_expression=f"""id_st_vw_projekt = '{projekt_id}' """
        layer.setSubsetString(filter_expression)




for layer in project.mapLayers().values():
    if layer.name().startswith('st_'):
        filter_expression = f"""
                exists (
                    select 'X'
                    from verundentsorgung.st_vw_projekt p
                    where p.id = id_st_vw_projekt and p.kurztext = '{projekt_kurz}'
                )"""
        layer.setSubsetString(filter_expression)
        #print(layer.name())
        
for layer in project.mapLayers().values():    
    if isinstance(layer, QgsVectorLayer):   # nur Vektorlayer   
        uri = QgsDataSourceUri(layer.source())
        host = uri.host()
        db = uri.database()
        schema = uri.schema()
        table = uri.table()        
        auth_file = uri.authConfigId()
        auth_mgr = QgsApplication.authManager()
        auth_cfg = QgsAuthMethodConfig()
        
        if not auth_mgr.loadAuthenticationConfig(auth_file, auth_cfg, True):
            raise Exception("Auth config nicht gefunden")
        config_map = auth_cfg.configMap()
        user_pg = config_map.get("username")
        password_pg = config_map.get("password")
        
        for i, field in enumerate(layer.fields()):
            default = layer.defaultValueDefinition(i)
            if field.name().startswith("id_st_vw"):
                expr = default.expression()
                #eigentuemer
                if expr == 'a0a79391-649c-40d8-a96d-8377d2a3f790':
                    expr = 'e795983a-ac18-492e-a114-c7b24712523a'

                #betreiber
                if expr == '05caad03-383c-454c-9f17-f235750a2b48':
                    expr = '0710b1f1-8ac4-4cea-878a-3ae2680f9d57'    

                if expr and not expr.startswith("@") and "topo" not in layer.name().lower():  # nur feste Werte
                    print(layer.name(), field.name(), "→", expr)
                    
                    # SQL zusammenbauen
                    sql = f""" SELECT id FROM {schema}.{field.name()[3:]} WHERE id_st_vw_projekt = '{projekt_id}' AND kurztext IN ( SELECT kurztext  FROM {schema}.{field.name()[3:]}
                    WHERE id = {expr} AND id_st_vw_projekt = '00000000-0000-0000-0000-000000000001');"""
                    # Query ausführen
                    #print(sql)
                    query = postgres_con(sql, host, db, user_pg, password_pg)
                    #print(query)
                    if query:
                        new_value = query[0][0]
                        print(f"'{new_value}'")
                        default.setExpression(f"'{new_value}'")
                        layer.setDefaultValueDefinition(i, default)



project_path = project.fileName()
folder, filename = os.path.split(project_path)
name, ext = os.path.splitext(filename)

# new filename with suffix
new_project_path = os.path.join(folder, f"{name}_{projekt_kurz}{ext}")

# save project under new name
project.write(new_project_path)

print("Project saved as:", new_project_path)

iface.actionExit().trigger()





