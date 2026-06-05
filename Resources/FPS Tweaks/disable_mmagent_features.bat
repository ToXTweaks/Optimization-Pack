@echo off
REM Disable MMAgent features
powershell -Command "Disable-MMAgent -ApplicationLaunchPrefetching"
powershell -Command "Disable-MMAgent -ApplicationPreLaunch"
powershell -Command "Disable-MMAgent -MemoryCompression"
powershell -Command "Disable-MMAgent -OperationAPI"
powershell -Command "Disable-MMAgent -PageCombining"
