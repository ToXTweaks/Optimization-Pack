@echo off
REM Zone information
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v SaveZoneInformation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v ModRiskFileTypes /t REG_SZ /d ".bat;.cmd;.vbs;.reg;.js;.exe;.msi;" /f
