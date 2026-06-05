@echo off
REM Other policies
reg add "HKLM\Software\Policies\Microsoft\Windows\Messaging" /v AllowMessageSync /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v AllowOnlineTips /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v MSAOptional /t REG_DWORD /d 1 /f
