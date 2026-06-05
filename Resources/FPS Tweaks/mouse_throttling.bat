@echo off
REM Mouse throttling
reg add "HKCU\Control Panel\Mouse" /v RawMouseThrottleDuration /t REG_DWORD /d 20 /f
reg add "HKCU\Control Panel\Mouse" /v RawMouseThrottleLeeway /t REG_DWORD /d 0 /f

schtasks /Change /TN "\Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser Exp" /Disable
schtasks /Change /TN "\Microsoft\Windows\Application Experience\MareBackup" /Disable
schtasks /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "\Microsoft\Windows\DUSM\dusmtask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
schtasks /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\BootstrapUsageDataReporting" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\GovernedFeatureUsageProcessing" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\ReconcileConfigs" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\UsageDataReceiver" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable
schtasks /Change /TN "\Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable
schtasks /Change /TN "\Microsoft\Windows\Hotpatch\Monitoring" /Disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Sustainability\PowerGridForecastTask" /Disable
schtasks /Change /TN "\Microsoft\Windows\Sustainability\SustainabilityTelemetry" /Disable
schtasks /Change /TN "\Microsoft\Windows\WDI\ResolutionHost" /Disable
schtasks /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
DISM /Online /Disable-Feature /FeatureName:WorkFolders-Client /NoRestart
DISM /Online /Disable-Feature /FeatureName:WCF-Services45 /NoRestart
DISM /Online /Disable-Feature /FeatureName:WCF-TCP-PortSharing45 /NoRestart
DISM /Online /Disable-Feature /FeatureName:MediaPlayback /NoRestart
DISM /Online /Disable-Feature /FeatureName:WindowsMediaPlayer /NoRestart
DISM /Online /Disable-Feature /FeatureName:SmbDirect /NoRestart

powershell -Command "Get-WindowsCapability -Online | Where Name -like 'App.StepsRecorder*' | Remove-WindowsCapability -Online"
powershell -Command "Get-WindowsCapability -Online | Where Name -like 'Browser.InternetExplorer*' | Remove-WindowsCapability -Online"
powershell -Command "Get-WindowsCapability -Online | Where Name -like 'Media.WindowsMediaPlayer*' | Remove-WindowsCapability -Online"
powershell -Command "Get-WindowsCapability -Online | Where Name -like 'Microsoft.Windows.PowerShell.ISE*' | Remove-WindowsCapability -Online"
