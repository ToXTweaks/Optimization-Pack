@echo off
REM WHQL driver enforcement
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v WhqlSettings /t REG_DWORD /d 1 /f
