@echo off
REM Remove SecurityHealthSystray from startup
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v SecurityHealth /f
