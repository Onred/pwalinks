@echo off
mkdir "C:\Program Files\PWALinks"
echo -f | xcopy /f /y "%~dp0\native-app\pwalinks.py" "C:\Program Files\PWALinks\pwalinks.py"
echo -f | xcopy /f /y "%~dp0\native-app\pwalinks.bat" "C:\Program Files\PWALinks\pwalinks.bat"
powershell -Command "(Get-Content '%~dp0\native-app\pwalinks.json') -replace '%%APPDIR%%', 'C:\\Program Files\\PWALinks\\pwalinks.py'" > "C:\Program Files\PWALinks\pwalinks.json"
reg add "HKLM\SOFTWARE\Mozilla\NativeMessagingHosts\pwalinks" /t REG_SZ /d "C:\Program Files\PWALinks\pwalinks.json"
pause