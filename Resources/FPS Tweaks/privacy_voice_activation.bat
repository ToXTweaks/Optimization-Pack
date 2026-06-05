@echo off
REM Privacy - Voice activation
reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v AgentActivationEnabled /t REG_DWORD /d 0 /f
