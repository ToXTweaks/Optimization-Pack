@echo off
REM Typing insights
reg add "HKCU\SOFTWARE\Microsoft\input\Settings" /v InsightsEnabled /t REG_DWORD /d 0 /f
