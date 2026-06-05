@echo off
REM CEIP
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v CEIPEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v CEIPEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v CEIPEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\VSCommon\18.0\SQM" /v OptIn /t REG_DWORD /d 0 /f
