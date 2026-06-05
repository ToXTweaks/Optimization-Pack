@echo off
REM Disable ASMedia USB controllers
powershell -Command "Get-PnpDevice -FriendlyName '*ASMedia USB*' | Disable-PnpDevice -Confirm:$false"
