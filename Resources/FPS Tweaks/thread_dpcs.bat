@echo off
REM Thread DPCs
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /d 0 /f
