@echo off
netsh interface teredo set state disabled
netsh winsock reset
netsh int isatap set state disable
echo.
pause