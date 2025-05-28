@echo off
set /p birthyear=Enter Your birth year: 
for /f "tokens=2 delims==" %%i in ('wmic OS get localdatetime /value ^| find "="') do set datetime=%%i
set currentyear=%datetime:~0,4%
set /a age=%currentyear% - %birthyear%
echo Your age is %age%.
pause
