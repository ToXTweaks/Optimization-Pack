@echo off
REM Write caching
for /f "tokens=* delims=" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\SCSI" ^| findstr "HKEY"') do (
    for /f "tokens=* delims=" %%b in ('reg query "%%a" ^| findstr "HKEY"') do (
        reg add "%%b\Device Parameters\Disk" /v UserWriteCacheSetting /t REG_DWORD /d 1 /f
        reg add "%%b\Device Parameters\Disk" /v CacheIsPowerProtected /t REG_DWORD /d 1 /f
    )
)
