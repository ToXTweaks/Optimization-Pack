@echo off
REM Program Compatibility Assistant
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v SbEnable /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v DisableEngine /t REG_DWORD /d 1 /f
