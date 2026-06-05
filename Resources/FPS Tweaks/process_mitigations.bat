@echo off
REM Process mitigations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MitigationAuditOptions /t REG_BINARY /d 2222222222222222222222222222222222222222222222 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v MitigationOptions /t REG_BINARY /d 2222222222222222222222222222222222222222222222 /f
