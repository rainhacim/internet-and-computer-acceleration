@echo off
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
echo.
pause