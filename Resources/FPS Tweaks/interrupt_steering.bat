@echo off
REM Interrupt steering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptSteeringFlags /t REG_DWORD /d 1 /f
