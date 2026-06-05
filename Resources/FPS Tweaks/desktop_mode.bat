@echo off
REM Desktop mode
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v SignInMode /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v TabletMode /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v ConvertibleSlateModePromptPreference /t REG_DWORD /d 2 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAppsVisibleInTabletMode /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAutoHideInTabletMode /t REG_DWORD /d 0 /f
