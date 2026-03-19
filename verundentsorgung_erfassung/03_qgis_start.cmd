@echo off

set STAMMLAUFWERK=S:
set STAMMVERZEICHNIS=%CD%
set OSUSERNAME=kowagis

:VORLAGE_KOPIEREN
%STAMMLAUFWERK%
copy /y "%STAMMVERZEICHNIS%\qgis\verundentsorgung_gesamtauskunft.qgs" "%STAMMVERZEICHNIS%\qgis\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs"

:DEFAULTUSER_REPLACE
cd %STAMMVERZEICHNIS%\qgis
rem C:\OSGeo4W\bin\python3 -c "import sys; p='alt'; n='neu'; d=open('datei.txt', encoding='utf-8').read().replace(p, n); open('datei.txt', 'w', encoding='utf-8').write(d)"
echo c:                          >.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo cd C:\OSGeo4W              >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo call ".\bin\o4w_env.bat"   >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo %STAMMLAUFWERK%            >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo cd %STAMMVERZEICHNIS%\qgis >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo C:\OSGeo4W\bin\python3 -c "import sys; p='<value>verundentsorgung_admin_user</value>'; n='<value>%PGUSERNAME%</value>'; d=open('verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs', encoding='utf-8').read().replace(p, n); open('verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs', 'w', encoding='utf-8').write(d)" >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
echo C:\OSGeo4W\bin\python3 -c "import sys; p='Verundentsorgung_Erfasssung_Master_ZVG_produktiv_172.20.1.155_User_gis'; n='Verundentsorgung_Erfasssung_Master_ZVG_produktiv_172.20.1.155_User_%PGUSERNAME%'; d=open('verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs', encoding='utf-8').read().replace(p, n); open('verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs', 'w', encoding='utf-8').write(d)" >>.\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd
call .\verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs.cmd

:QGIS_START
%STAMMLAUFWERK%
cd %STAMMVERZEICHNIS%
%STAMMVERZEICHNIS%\00_qgis_start_vorlage.cmd verundentsorgung_gesamtauskunft_%OSUSERNAME%.qgs


