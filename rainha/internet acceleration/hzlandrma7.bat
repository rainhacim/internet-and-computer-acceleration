@echo off

netsh int tcp set global ecncapability=disabled
netsh int tcp set global rsc=disabled
echo.
pause