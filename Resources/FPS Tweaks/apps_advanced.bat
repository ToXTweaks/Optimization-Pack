@echo off
REM Apps - Advanced
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v RomeSdkChannelUserAuthzPolicy /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v CdpSessionUserAuthzPolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\InstallService\Stubification\%USER_SID%" /v EnableAppOffloading /t REG_DWORD /d 0 /f
