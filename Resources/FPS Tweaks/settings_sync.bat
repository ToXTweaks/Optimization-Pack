@echo off
REM Settings sync
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableApplicationSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableApplicationSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableCredentialsSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableCredentialsSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisablePersonalizationSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisablePersonalizationSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableAppSyncSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableAppSyncSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableWindowsSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableWindowsSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableDesktopThemeSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableDesktopThemeSettingSyncUserOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableWebBrowserSettingSync /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableWebBrowserSettingSyncUserOverride /t REG_DWORD /d 1 /f
