@echo off
REM Uninstall OneDrive
taskkill /f /im OneDrive.exe
taskkill /f /im OneDrive.Sync.Service.exe
taskkill /f /im UserOOBEBroker.exe
taskkill /f /im FileCoAuth.exe
taskkill /f /im OneDrivePatcher.exe
%SystemRoot%\System32\OneDriveSetup.exe /uninstall
timeout /t 2
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
rd /s /q "%ProgramData%\Microsoft OneDrive"
rd /s /q "%LocalAppData%\Microsoft\OneDrive"
schtasks /Delete /TN "OneDrive Startup Task" /F
