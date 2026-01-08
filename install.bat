@echo off
echo installing xitter...

set INSTALL_DIR=%APPDATA%\xitter
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

copy /Y index.html "%INSTALL_DIR%\"
copy /Y feed.html "%INSTALL_DIR%\"

set SHORTCUT=%APPDATA%\Microsoft\Windows\Start Menu\Programs\xitter.lnk
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT%'); $s.TargetPath='%INSTALL_DIR%\index.html'; $s.Save()"

echo @echo off > "%INSTALL_DIR%\xitter.bat"
echo start "" "%INSTALL_DIR%\index.html" >> "%INSTALL_DIR%\xitter.bat"

echo.
echo xitter installed successfully!
echo.
echo    - search "xitter" in Start Menu
echo    - or open: %INSTALL_DIR%\xitter.bat
pause
