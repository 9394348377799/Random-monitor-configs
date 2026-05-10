@echo off
:: Get the full path to this script folder
set SCRIPT_PATH=C:\Users\___\Desktop\toggle_monitor.ps1
:: You will have to change the path based on where you put these three scripts.

:: Run the PowerShell script as Administrator
powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process powershell -Verb runAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%SCRIPT_PATH%\"'"

pause
