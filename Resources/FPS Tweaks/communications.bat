@echo off
REM Communications
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v UserDuckingPreference /t REG_DWORD /d 3 /f
