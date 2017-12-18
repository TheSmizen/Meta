@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"

set fullstamp="%YYYY%-%MM%-%DD%"
set fileName="%fullstamp%.txt"

for /f "tokens=*" %%a in (C:\Hello\HelloDates.csv) do (
	if exist "%fullstamp%.txt" ( echo %a% )
)

pause

::if exist "%fileName%" (
::
::)

::set "fullstamp=%YYYY%-%MM%-%DD%_%HH%"
::echo fullstamp: "%fullstamp%"
::pause
