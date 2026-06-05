@echo off
REM Telemetry environment variables
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v CLOUDSDK_CORE_DISABLE_PROMPTS /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DOTNET_TRY_CLI_TELEMETRY_OPTOUT /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DOTNET_CLI_TELEMETRY_OPTOUT /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DOCKER_CLI_TELEMETRY_OPTOUT /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v npm_config_loglevel /t REG_SZ /d "silent" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v POWERSHELL_TELEMETRY_OPTOUT /t REG_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v VS_TELEMETRY_OPT_OUT /t REG_SZ /d "1" /f
