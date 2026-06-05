@echo off
REM Mouse settings
reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d "150" /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d "150" /f
