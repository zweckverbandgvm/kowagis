@echo off
echo Nach welcher Anomalie suchst du:
set /P ANOMALIE=
for %%I in (
.\
.\pg_dump
.\verundentsorgung_erfassung\python_skripts
.\verundentsorgung_erfassung\qgis\
.\verundentsorgung_erfassung\qgis\py
.\verundentsorgung_erfassung\qgis\ui
) do (
for %%E in (
xml
gpt
py
svg
ui
qgs
sql
) do (
rem dir %%I\*.%%E
type /I "%%I\*.%%E" | find /i "%ANOMALIE%"
)
)
pause
