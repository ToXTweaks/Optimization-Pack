@echo off
REM System beeps
reg add "HKCU\Control Panel\Sound" /v Beep /t REG_SZ /d "no" /f
