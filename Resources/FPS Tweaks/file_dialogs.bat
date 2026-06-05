@echo off
REM File dialogs
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v EnthusiastMode /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ExtractionWizard" /v ShowFiles /t REG_DWORD /d 0 /f
