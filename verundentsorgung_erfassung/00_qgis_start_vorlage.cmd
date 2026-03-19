rem C:\OSGeo4W\bin\qgis-ltr-bin.exe
@echo off
set year=%date:~-2,4%
echo year=%year%
set month=%date:~3,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
echo month=%month%
set day=%date:~0,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%
echo day=%day%
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
echo hour=%hour%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
echo min=%min%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
echo secs=%secs%
set sessionid=%year%%month%%day%%hour%%min%%secs%
rem 
rem set PROJEKTPFAD=%CD%
set OSUSERNAME=kowagis
set AVERSION=v0.0.2
echo sessionid=%sessionid%
set PROJEKTLW=S:
set PROJEKTPFAD=%PROJEKTLW%\_EW\_gbd_websuite\projekte\gis_verundentsorgung\git_kowa\%AVERSION%\verundentsorgung_erfassung
set QGIS_VERSION=3.40
set QGIS_PROJEKT_PFAD=%PROJEKTPFAD%\qgis
set QGIS_AUTH_DB_DIR_PATH=%QGIS_PROJEKT_PFAD%\qgis-auth\%OSUSERNAME%
set QGIS_PROFILE_PATH=%PROJEKTLW%\qgis_profiles\%OSUSERNAME%\%QGIS_VERSION%
set ANMELDELOG=%QGIS_PROJEKT_PFAD%\log\01_qgis-start.log
mkdir %QGIS_PROJEKT_PFAD%\log
rem mkdir %QGIS_PROFILE_PATH%
set STARTPROJEKT=%PROJEKTPFAD%\qgis\%1

rem set  QGIS_START_PARAMETERS=-a %QGIS_AUTH_DB_DIR_PATH% --profiles-path %QGIS_PROFILE_PATH% --profile default -n -V -B --hide-browser -p %STARTPROJEKT%
rem set QGIS_START_PARAMETERS=-a %QGIS_AUTH_DB_DIR_PATH% --profiles_path %QGIS_PROFILE_PATH% --profile %OSUSERNAME% -n -V -B --hide-browser -p %STARTPROJEKT%
set  QGIS_START_PARAMETERS=-a %QGIS_AUTH_DB_DIR_PATH% -n -V -B --hide-browser -p %STARTPROJEKT%
if "%OSUSERNAME%"=="xyz" set  QGIS_START_PARAMETERS=-a %QGIS_AUTH_DB_DIR_PATH% -n -V -B --hide-browser -p %STARTPROJEKT%
cls
echo .
echo .
rem chcp 850
echo SESSIONID=%SESSIONID%
echo PROJEKTLW=%PROJEKTLW%
echo PROJEKTPFAD=%PROJEKTPFAD%
echo QGIS_AUTH_DB_DIR_PATH=%QGIS_AUTH_DB_DIR_PATH%
echo QGIS_PROJEKT_PFAD=%QGIS_PROJEKT_PFAD%
echo ANMELDELOG=%ANMELDELOG%
echo STARTPROJEKT=%STARTPROJEKT%
echo QGIS_START_PARAMETERS=%QGIS_START_PARAMETERS%
echo .
echo .
echo Dieses Fenster bitte nicht schließen, solange QGIS gestartet bleibt.
echo Dieses Fenster schließt sich, wenn QGIS durch den Benutzer geschlossen wird.
echo Der Aufruf dieses Startscriptes impliziert die Authentifizierungsdatei %QGIS_AUTH_DB_DIR_PATH%\qgis-auth.db
echo Beim Start von QGIS muss hier einmalig das Passwort eingetragen werden.
echo Wenn dabei der Haken "Speichern/Aktualisieren des Hauptkennworts in Passwortmanager" angehakt wird, 
echo muss dieses Passwort auf diesem Rechner nicht wieder eingegeben werden.
echo .
echo .
echo .
pause
echo QGIS wird gestartet, dieses Fenster bitte nicht schließen ...
echo QGISSTART STARTDATUM:%DATE% STARTZEIT:%TIME% SESSIONID:%sessionid% %USERDOMAIN%:USERDOMAIN OSUSERNAME:%OSUSERNAME% COMPUTERNAME:%COMPUTERNAME% CLIENTNAME:%CLIENTNAME% SESSIONNAME:%SESSIONNAME% %1
echo QGISSTART STARTDATUM:%DATE% STARTZEIT:%TIME% SESSIONID:%sessionid% %USERDOMAIN%:USERDOMAIN OSUSERNAME:%OSUSERNAME% COMPUTERNAME:%COMPUTERNAME% CLIENTNAME:%CLIENTNAME% SESSIONNAME:%SESSIONNAME% %1 >>%ANMELDELOG%
if "%OSUSERNAME%"=="kowagis" set STARTANWEISUNG=cmd /c "C:\OSGeo4W\bin\qgis-ltr-bin.exe" %QGIS_START_PARAMETERS%
echo %STARTANWEISUNG%
%STARTANWEISUNG%
echo QGISSTOP  STOPDATUM :%DATE% STOPZEIT :%TIME% SESSIONID:%sessionid% %USERDOMAIN%:USERDOMAIN OSUSERNAME:%OSUSERNAME% COMPUTERNAME:%COMPUTERNAME% CLIENTNAME:%CLIENTNAME% SESSIONNAME:%SESSIONNAME% %1
echo QGISSTOP  STOPDATUM :%DATE% STOPZEIT :%TIME% SESSIONID:%sessionid% %USERDOMAIN%:USERDOMAIN OSUSERNAME:%OSUSERNAME% COMPUTERNAME:%COMPUTERNAME% CLIENTNAME:%CLIENTNAME% SESSIONNAME:%SESSIONNAME% %1 >>%ANMELDELOG%

