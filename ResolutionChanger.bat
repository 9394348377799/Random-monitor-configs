@echo off
set "NIRCMD=C:\nircmd\nircmd.exe"

echo Press 1 for Native (2560x1440) or 2 for Stretched (1569x1080)
choice /c 12 /n >nul

if errorlevel 2 (
    "%NIRCMD%" setdisplay 1569 1080 32
) else if errorlevel 1 (
    "%NIRCMD%" setdisplay 2560 1440 32
)
