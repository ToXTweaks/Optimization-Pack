@echo off
REM DMA remapping
for %%a in (DmaRemappingCompatible) do (
    for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "%%a" ^| findstr "HKEY"') do (
        reg add "%%b" /v "%%a" /t REG_DWORD /d 0 /f
    )
)
