@echo off
REM Hide Windows Security Systray
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v HideSystray /t REG_DWORD /d 1 /f
