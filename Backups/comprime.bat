@echo off

setlocal

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "AÑO=%dt:~0,4%"
set "MES=%dt:~4,2%"
set "DIA=%dt:~6,2%"

set "FORMATO_FECHA=%DIA%_%MES%_%AÑO%"

set CARPETA_ORIGEN=C:\Users\Usuario\Documents\Proyectos_GitHub\Sistema_Backups\Backups\BkPrueba_%FORMATO_FECHA%

set CARPETA_DESTINO=C:\Users\Usuario\Documents\Proyectos_GitHub\Sistema_Backups\Backups\Archivos_Comprimidos

cd %CARPETA_ORIGEN%

set path="C:\Program Files\WinRAR";%path%

SET hr=%time:~0,2%
IF %hr% lss 10 SET hr=0%hr:~1,1%

Set HOY=%FORMATO_FECHA%-%hr%_%time:~3,2%_%time:~6,2%

echo.
echo Carpeta a comprimir en formato *.RAR:
echo %CARPETA_ORIGEN%
echo.
echo.

rar a -r "%CARPETA_DESTINO%\BkPrueba_%HOY%.rar" 

if not exist %CARPETA_DESTINO% mkdir %CARPETA_DESTINO%

copy "%CARPETA_ORIGEN%\BkPrueba_%HOY%.rar" %CARPETA_DESTINO%

del "%CARPETA_ORIGEN%\BkPrueba_%HOY%.rar"

echo.
echo Tarea completada
echo.

endlocal

Call limpiar.bat