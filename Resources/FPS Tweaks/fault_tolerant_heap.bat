@echo off
REM Fault Tolerant Heap
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v Enabled /t REG_DWORD /d 0 /f
rundll32.exe fthsvc.dll,FthSysprepSpecialize
