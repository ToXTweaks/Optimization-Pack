@echo off
REM SmartScreen
if exist "%SystemRoot%\System32\smartscreen.exe" (
    taskkill /f /im smartscreen.exe
    ren "%SystemRoot%\System32\smartscreen.exe" smartscreen.exee
)
