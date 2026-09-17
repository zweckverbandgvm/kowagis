exit
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

set VERSION=v0.0.3
echo %VERSION%
set HAUPQUELLE=\\GISFILE-SV03\U\intern\verundentsorgung_erfassung
echo %HAUPQUELLE%
set HAUPZIEL=\\GISFILE-SV03\S\_EW\_gbd_websuite\projekte\gis_verundentsorgung\git_kowa\%VERSION%
echo %HAUPZIEL%
set LOG=%HAUPZIEL%\sync.log
echo %LOG% 1>>%LOG%
set ERR=%HAUPZIEL%\sync.err
echo %ERR% 1>>%LOG%

echo del %LOG%
     del %LOG%
echo del %ERR%
     del %ERR%

:DOKUMENTATION
set QUELLE=%HAUPQUELLE%\Dokumentation
set ZIEL=%HAUPZIEL%\verundentsorgung_erfassung\Dokumentation
set COPYPARAMETER=/d /e /c /i /f /h /r /k /y
rem echo del /s /q %ZIEL%\* 1>>%LOG%
rem      del /s /q %ZIEL%\* 1>>%LOG% 2>>%ERR%
echo rmdir /s /q %ZIEL% 1>>%LOG%
     rmdir /s /q %ZIEL% 1>>%LOG% 2>>%ERR%
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
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\" 1>>%LOG%
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
echo rmdir /s /q "%ZIEL%\%%I" 1>>%LOG%
     rmdir /s /q "%ZIEL%\%%I" 1>>%LOG% 2>>%ERR%
for %%E in (
py
) do (
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\"
     xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\" 1>>%LOG% 2>>%ERR%
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
xml
gpt
py
pyc
jpg
png
svg
ui
) do (
echo del /q "%ZIEL%\%%I\*.%%E"
     del /q "%ZIEL%\%%I\*.%%E"
echo xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\"
     xcopy %COPYPARAMETER% "%QUELLE%\%%I\*.%%E" "%ZIEL%\%%I\" 1>>%LOG% 2>>%ERR%
)
)

echo del /q "%ZIEL%\verundentsorgung_gesamtauskunft.qgs"
     del /q "%ZIEL%\verundentsorgung_gesamtauskunft.qgs"
copy /y %QUELLE%\verundentsorgung_gesamtauskunft.qgs %ZIEL%\ 1>>%LOG% 2>>%ERR%

mkdir %ZIEL%\qgis-auth\kowagis 1>>%LOG% 2>>%ERR%
echo del /q "%ZIEL%\qgis-auth\kowagis\qgis-auth.db"
     del /q "%ZIEL%\qgis-auth\kowagis\qgis-auth.db"
copy /y %QUELLE%\qgis-auth\kowagis\qgis-auth.db %ZIEL%\qgis-auth\kowagis\ 1>>%LOG% 2>>%ERR%

pause
:ende
