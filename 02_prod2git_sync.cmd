set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
echo hour=%hour%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
echo min=%min%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
echo secs=%secs%

rem set year=%date:~-4%
set year=%date:~-2,4%
echo year=%year%
set month=%date:~3,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
echo month=%month%
set day=%date:~0,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%
echo day=%day%
rem set datetimef=%year%%month%%day%_%hour%%min%%secs%
set datetimef=%year%%month%%day%_%hour%%min%
echo datetimef=%datetimef%

set t=%datetimef%
echo %t%

set VERSION=v0.0.2
set HAUPQUELLE=\\GISFILE-SV02\U\intern\verundentsorgung_erfassung
set HAUPZIEL=\\GISFILE-SV02\S\_EW\_gbd_websuite\projekte\gis_verundentsorgung\git_kowa\%VERSION%
set LOG=%HAUPZIEL%\sync.log
set ERR=%HAUPZIEL%\sync.err

goto ENDE:

:DOKUMENTATION
set QUELLE=%HAUPQUELLE%\Dokumentation
set ZIEL=%HAUPZIEL%\verundentsorgung_erfassung\Dokumentation
set COPYPARAMETER=/d /e /c /i /f /h /r /k /y
for %%I in (
Abwasser
Allgemein
Anlagendokumentation
Kabel
Wasser
) do (
for %%E in (
pdf
jpg
) do (
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\"
     xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\" 1>>%LOG% 2>>%ERR%
)
)

:PYTHON_SKRIPTS
set QUELLE=%HAUPQUELLE%
set ZIEL=%HAUPZIEL%\verundentsorgung_erfassung
set COPYPARAMETER=/d /e /c /i /f /h /r /k /y
for %%I in (
python_skripts
) do (
for %%E in (
py
) do (
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\"
     xcopy %COPYPARAMETER% "%QUELLE%\*.%%E" "%ZIEL%\" 1>>%LOG% 2>>%ERR%
)
)

:QGIS
set QUELLE=%HAUPQUELLE%\qgis
set ZIEL=%HAUPZIEL%\verundentsorgung_erfassung\qgis
set COPYPARAMETER=/d /e /c /i /f /h /r /k /y
for %%I in (
plottvorlagen
py
svg
ui
) do (
for %%E in (
pdf
xml
gpt
py
pyc
jpg
svg
ui
) do (
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\"
     xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\" 1>>%LOG% 2>>%ERR%
)
)

copy /y %QUELLE%\verundentsorgung_gesamtauskunft.qgs %ZIEL%\ 1>>%LOG% 2>>%ERR%
mkdir %ZIEL%\qgis-auth\kowagis 1>>%LOG% 2>>%ERR%
copy /y %QUELLE%\qgis-auth\kowagis\qgis-auth.db %ZIEL%\qgis-auth\kowagis\ 1>>%LOG% 2>>%ERR%

pause
:ende
