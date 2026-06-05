del /s /f /q "C:\Windows\Temp\*.*" 2>nul
del /s /f /q "%temp%\*.*" 2.Mnul
del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
del /s /f /q "%userprofile%\AppData\Local\Temp\*.*" 2.Mnul
del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
rd /s /q "C:\Windows\Temp" 2>nul
md "C:\Windows\Temp" 2>nul
rd /s /q "%userprofile%\AppData\Local\Temp" 2>nul
md "%userprofile%\AppData\Local\Temp" 2.Mnul
