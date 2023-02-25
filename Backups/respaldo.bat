@echo off
setlocal

echo Respaldo de archivos

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "AÑO=%dt:~0,4%"
set "MES=%dt:~4,2%"
set "DIA=%dt:~6,2%"

set "FORMATO_FECHA=%DIA%_%MES%_%AÑO%"

set "ORIGEN=C:\Users\Usuario\Documents\Proyectos_GitHub\Sistema_Backups\Prueba"
set "DESTINO=C:\Users\Usuario\Documents\Proyectos_GitHub\Sistema_Backups\Backups\BkPrueba_%DIA%_%MES%_%AÑO%"

mkdir "%DESTINO%"

xcopy /S /C /D /E /H /I /R /Y "%ORIGEN%" "%DESTINO%"

echo %DATE% %TIME% >> "C:\Users\Usuario\Documents\Proyectos_GitHub\Sistema_Backups\Backups\info\reg%FORMATO_FECHA%.log"

Call comprime.bat

