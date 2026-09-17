rem vorher passende ./postgresql-9.4.1208.jre6.jar runterladen und in bin Verzeichnis legen
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
echo hour=%hour%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
echo min=%min%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
echo secs=%secs%

set year=%date:~-4%
echo year=%year%
set month=%date:~3,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
echo month=%month%
set day=%date:~0,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%
echo day=%day%
set datetimef=%year%%month%%day%_%hour%%min%%secs%
echo datetimef=%datetimef%

set PATH=%PATH%;C:\Programme_Binarys\microsoft-jdk-11.0.32.1-windows-x64\bin

set t=%datetimef%
echo DBHOST eingeben:
set /P DBHOST=
set DBPORT=5432
set PGENCODING=utf8
set DB=gis
set SCHEMA=verundentsorgung
echo DBUSER eingeben:
set /p DBUSER=
echo Bitte Passwort für folgenden Datenbank Benutzer eingeben: %DBUSER%
set /P PGPASSWORD=

set HTML_DOCU="0"
set SQL_DOKU="0"
set SQL_DATEN="0"

rem goto CREATE_DML:

:CREATE_HTML_ER_MODELL
set DBORDNER=%DBHOST%_%DB%_%SCHEMA%_%T%
set DBORDNER=schemaspydocu
rmdir /s /q .\%DBORDNER%
mkdir .\%DBORDNER%
del /Q /S .\%DBORDNER%\*
rem java -jar ../bin/schemaspy-6.2.4.jar -renderer :cairo -hq -dbthreads 15 -desc "Steckbriefprojekt" -noDbObjectPaging -noTablePaging -noIndexPaging -noCheckPaging -noRoutinePaging -noFkPaging -noColumnPaging -noAnomaliesPaging -degree 1 -t pgsql -host %DBHOST% -db %DB% -s %SCHEMA% -u %DBUSER% -p %PGPASSWORD% -dp ../bin/postgresql-42.2.20.jar -gv ../bin/Graphviz-10.0.1-win64/ -o ./%DBORDNER%/
java -jar ../bin/schemaspy-6.2.4.jar -renderer :cairo -hq -desc "Steckbriefprojekt" -t pgsql -host %DBHOST% -db %DB% -s %SCHEMA% -u %DBUSER% -p %PGPASSWORD% -dp ../bin/postgresql-42.2.20.jar -gv ../bin/Graphviz-10.0.1-win64/ -o ./%DBORDNER%/

rem java -jar schemaspy.jar \
rem   -t pgsql \
rem   -dp postgresql-42.6.0.jar \
rem   -db mydb \
rem   -host localhost \
rem   -port 5432 \
rem   -u myuser \
rem   -p mypass \
rem   -o ./output \
rem   -hq

rem schemacrawler --help
rem List all database objects:
rem schemacrawler \
rem   --server postgresql \
rem   --host postgresql \
rem   --database schemacrawler \
rem   --user schemacrawler \
rem   --password schemacrawler \
rem   --info-level minimum \
rem   --command list

:CREATE_DDL
set DBORDNER=pg_dump
mkdir .\%DBORDNER%
del .\%DBORDNER%\verundentsorgung.sql
pg_dump --host %DBHOST% --port %DBPORT% --username %DBUSER% --role %DBUSER% --dbname %DB% --schema %SCHEMA% --verbose --no-owner --no-privileges --no-security-labels --no-tablespaces --format=p --column-inserts --inserts --blobs --encoding %PGENCODING% --schema-only --file ./%DBORDNER%/verundentsorgung.sql

rem goto ENDE:

:CREATE_DML
set DBORDNER=pg_dump
mkdir .\%DBORDNER%
for %%i in (
admin_benutzergruppe
admin_layerstruktur
admin_layerstruktur2admin_symbole_mv
admin_projekt_parameter
admin_symbole
qkan_kanalexport_exportfilter
st_amt
st_fla_filtergebiet
st_gemeinde
st_label
st_ort
st_strasse
st_suche__nach_name_number
st_vw_abdeckungsform
st_vw_abrechnung
st_vw_abscheidertyp
st_vw_abwassereinleittyp
st_vw_armatur
st_vw_auslaufnummer
st_vw_auslauftyp
st_vw_baumassnahme
st_vw_bauteil
st_vw_beckenform
st_vw_beckenfunktion
st_vw_beckenkonstruktion
st_vw_beckentyp
st_vw_behaelter
st_vw_beitrags_medium
st_vw_belueftung
st_vw_bepflanzung
st_vw_beprobung
st_vw_beschichtung
st_vw_betreiber
st_vw_betriebsstatus
st_vw_brunnentyp
st_vw_deckel_herst_typ
st_vw_dimension
st_vw_dokumenttyp
st_vw_druckminderertyp
st_vw_druckstationtyp
st_vw_druckstufe
st_vw_eigentuemer
st_vw_einlaufnummer
st_vw_einstiegshilfe
st_vw_entlueftungstyp
st_vw_filtermaterial
st_vw_fliessrichtungspfeil_typ
st_vw_hausanschluss_typ
st_vw_hersteller
st_vw_hilfsfilter
st_vw_hydranttyp
st_vw_kabeltyp
st_vw_kartenlayout
st_vw_klaeranlagen_typ
st_vw_label_definition
st_vw_labeltyp
st_vw_lagestatus
st_vw_lastklassen
st_vw_layout_spalten
st_vw_linienmarkierungen
st_vw_material
st_vw_medium
st_vw_model_design
st_vw_nennweite_dn_tw_leitung
st_vw_nennweite_hydrant
st_vw_netztyp
st_vw_objektbezeichnung
st_vw_projekt
st_vw_projektfilter
st_vw_pumpwerkstyp
st_vw_schacht_typ
st_vw_schachtdeckeltyp
st_vw_schachtform
st_vw_schadenreparatur
st_vw_schadenstyp
st_vw_schaltzustand
st_vw_schiebertyp
st_vw_sonstige_anlage_typ
st_vw_speichereinrichtungstyp
st_vw_struckturbedingung
st_vw_tankverwendung
st_vw_topologie
st_vw_typ2objektklasse
st_vw_verbindungstyp
st_vw_verlegetyp
st_vw_verschiedenes
st_vw_verschluss
st_vw_versiegelung
st_vw_verwendung
st_vw_vorgangart
st_vw_zaehlertyp
) do (
del .\%DBORDNER%\verundentsorgung.%%i.sql
pg_dump --host %DBHOST% --port %DBPORT% --username %DBUSER% --role %DBUSER% --dbname %DB% --schema %SCHEMA% --table %SCHEMA%.%%i  --data-only --verbose --no-owner --no-privileges --no-security-labels --no-tablespaces --format=p --column-inserts --inserts --blobs --encoding %PGENCODING% --file ./%DBORDNER%/verundentsorgung.%%i.sql
del .\%DBORDNER%\verundentsorgung.%%i.tgz
tar -cvzf ./%DBORDNER%/verundentsorgung.%%i.tgz ./%DBORDNER%/verundentsorgung.%%i.sql
del .\%DBORDNER%\verundentsorgung.%%i.sql
)

:DOKU2GIT

:ENDE
pause
exit
