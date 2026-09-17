c:                          
cd C:\OSGeo4W              
call ".\bin\o4w_env.bat"   
S:            
cd S:\_EW\_gbd_websuite\projekte\gis_verundentsorgung\git_kowa\v0.0.3\verundentsorgung_erfassung\qgis 
C:\OSGeo4W\bin\python3 -c "import sys; p='<value>verundentsorgung_admin_user</value>'; n='<value></value>'; d=open('verundentsorgung_gesamtauskunft_kowagis.qgs', encoding='utf-8').read().replace(p, n); open('verundentsorgung_gesamtauskunft_kowagis.qgs', 'w', encoding='utf-8').write(d)" 
C:\OSGeo4W\bin\python3 -c "import sys; p='Verundentsorgung_Erfasssung_Master_ZVG_produktiv_172.20.1.155_User_gis'; n='Verundentsorgung_Erfasssung_Master_ZVG_produktiv_172.20.1.155_User_'; d=open('verundentsorgung_gesamtauskunft_kowagis.qgs', encoding='utf-8').read().replace(p, n); open('verundentsorgung_gesamtauskunft_kowagis.qgs', 'w', encoding='utf-8').write(d)" 
