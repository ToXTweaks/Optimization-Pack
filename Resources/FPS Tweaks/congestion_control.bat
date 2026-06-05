@echo off
REM Congestion control
netsh int tcp set supplemental internet congestionprovider=bbr2
