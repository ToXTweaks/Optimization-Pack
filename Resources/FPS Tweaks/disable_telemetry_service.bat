@echo off
REM Disable telemetry service
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v Start /t REG_DWORD /d 4 /f
sc stop DiagTrack
