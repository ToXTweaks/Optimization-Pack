@echo off
REM NetBIOS settings
powershell -Command "Get-ChildItem 'HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces' | ForEach-Object { Set-ItemProperty -Path $_.PSPath -Name 'NetbiosOptions' -Value 2 -Type DWord -Force }"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v EnableLMHOSTS /t REG_DWORD /d 0 /f
