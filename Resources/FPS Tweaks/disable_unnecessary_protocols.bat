@echo off
REM Disable unnecessary protocols
powershell -Command "& { Get-NetAdapterBinding | Where-Object { $_.Enabled -eq $true -and $_.ComponentID -in 'ms_msclient','ms_server','ms_implat','ms_lldp','ms_lltdio','ms_rspndr' } | ForEach-Object { Disable-NetAdapterBinding -Name $_.InterfaceAlias -ComponentID $_.ComponentID } }"
