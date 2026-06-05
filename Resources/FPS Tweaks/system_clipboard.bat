@echo off
REM System - Clipboard
reg add "HKCU\Software\Microsoft\Clipboard" /v EnableClipboardHistory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v AllowCrossDeviceClipboard /t REG_DWORD /d 0 /f
