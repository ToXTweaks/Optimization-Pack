@echo off
REM Apps - Resume
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CrossDeviceResume\Configuration" /v IsResumeAllowed /t REG_DWORD /d 0 /f
