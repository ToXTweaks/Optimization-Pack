@echo off
REM Timer serialization
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SerializeTimerExpiration /t REG_DWORD /d 1 /f
