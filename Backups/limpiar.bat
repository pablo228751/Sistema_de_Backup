@echo off

setlocal

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "AÑO=%dt:~0,4%"
set "MES=%dt:~4,2%"
set "DIA=%dt:~6,2%"

set "FORMATO_FECHA=%DIA%_%MES%_%AÑO%"

RD /S /Q BkPrueba_%FORMATO_FECHA%
del comprime.bat*.* /q 
del respaldo_diario.bat*.* /q
erase limpiar.bat*.* /q
exit