@echo off
REM RSS and packet coalescing
powershell -Command "Set-NetOffloadGlobalSetting -ReceiveSideScaling Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter Disabled"
