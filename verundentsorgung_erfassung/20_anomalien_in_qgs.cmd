REM @echo off
rem S:
rem cd S:\_EW\_gbd_websuite\projekte\gis_verundentsorgung\qgis\qgs
@echo off
set AUSSCHLUSS01=http://172.20.1.147:8081/geoserver/ows
set AUSSCHLUSS02=http://172.20.1.155:8094/geoserver/ows
set AUSSCHLUSS03=Verundentsorgung_Erfasssung
echo Nach welchem Passwort suchst du:
set /P PASSWORD=
cd .\qgis
rem verundentsorgung_gesamtauskunft_ZKWAL.qgs
for %%I in (
verundentsorgung_gesamtauskunft.qgs
) do (
echo ..............................
echo %%I
echo ..............................
echo Fremder Server eingebunden
type %%I | find /I "172." | find /I /v "172.20.1.155" | find /I /v "%AUSSCHLUSS01%" | find /I /v "%AUSSCHLUSS02%" | find /I /v "%AUSSCHLUSS03%"
echo ..............................
echo Server DatenQuelle, ohne Verwendung von authcfg
type %%I | find /I "172." | find /I /v "authcfg=" | find /I /v "%AUSSCHLUSS01%" | find /I /v "%AUSSCHLUSS02%" | find /I /v "%AUSSCHLUSS03%"
echo ..............................
echo Server DatenQuelle, mit Passwort eingebunden
type %%I | find /I "172." | find /I "passw" | find /I /v "%AUSSCHLUSS01%" | find /I /v "%AUSSCHLUSS02%" | find /I /v "%AUSSCHLUSS03%"
echo ..............................
echo Server DatenQuelle, mit Username eingebunden.
type %%I | find /I "172." | find /I "user=" | find /I /v "%AUSSCHLUSS01%" | find /I /v "%AUSSCHLUSS02%" | find /I /v "%AUSSCHLUSS03%"
echo ..............................
echo Daten oder Configurationsfiles eingebunden, die nicht von Laufwerk U:, sondern vom Laufwerk S: stammen.
type %%I | find /I "S:" | find /I /V "https:" | find /I /V "wms:" | find /I /V "filters:" | find /I /V "layers:" | find /I /V "places:" | find /I /V "records:" | find /I /V "An example follows:"
echo ..............................
echo Daten oder Configurationsfiles eingebunden, die nicht von Laufwerk U:, sondern vom Laufwerk I: stammen.
type %%I | find /I "I:"
echo ..............................
echo Server DatenQuelle, mit Passwort eingebunden
type %%I | find /I "%PASSWORD%"
echo ..............................
echo Server DatenQuelle, mit Passwort eingebunden
type %%I | find /I "verundentsorgung_admin_user"
echo ..............................
)

pause
exit















































