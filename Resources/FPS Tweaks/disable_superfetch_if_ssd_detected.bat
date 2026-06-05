@echo off
REM Disable Superfetch (if SSD detected)
reg add "HKLM\System\CurrentControlSet\Services\SysMain" /v Start /t REG_DWORD /d 4 /f
sc stop SysMain
