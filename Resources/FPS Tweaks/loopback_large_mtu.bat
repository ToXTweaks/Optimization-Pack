@echo off
REM Loopback large MTU
netsh int ipv4 set gl loopbacklargemtu=disable
netsh int ipv6 set gl loopbacklargemtu=disable
