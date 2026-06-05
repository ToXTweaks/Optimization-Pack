@echo off
REM Disable drive power saving
for %%a in (EnableHIPM EnableDIPM EnableHDDParking) do (
    for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%a" ^| findstr "HKEY"') do (
        reg add "%%b" /v "%%a" /t REG_DWORD /d 0 /f
    )
)

for /f "delims=" %%s in ('reg query "HKLM\System\CurrentControlSet\Enum" /S /F "StorPort" ^| findstr /e "StorPort"') do (
    reg add "%%s" /v EnableIdlePowerManagement /t REG_DWORD /d "0" /f
)

for %%a in (EnhancedPowerManagementEnabled AllowIdleIrpInD3 EnableSelectiveSuspend DeviceSelectiveSuspended SelectiveSuspendEnabled SelectiveSuspendOn EnumerationRetryCount ExtPropDescSemaphore WaitWakeEnabled D3ColdSupported WdfDirectedPowerTransitionEnable EnableIdlePowerManagement IdleInWorkingState IdleTimeoutInMS MinimumIdleTimeoutInMS WakeEnabled) do (
    for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do (
        reg add "%%b" /v "%%a" /t REG_DWORD /d 0 /f
    )
)

for %%a in (DisableIdlePowerManagement DisableRuntimePowerManagement) do (
    for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%a" ^| findstr "HKEY"') do (
        reg add "%%b" /v "%%a" /t REG_DWORD /d 1 /f
    )
)
