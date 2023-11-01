@echo off

netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled

echo.
pause