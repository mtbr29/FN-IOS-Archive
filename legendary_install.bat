@ECHO OFF
SETLOCAL

:: Check if a manifest file was provided
IF "%~1"=="" (
    ECHO [ERROR] Please drag a manifest file onto legendary_install.bat
    pause
    exit /b
)

ECHO Manifest provided: %~1
ECHO ==========================
ECHO Where would you like to install Fortnite?
ECHO (Drag a folder into this window and press Enter)
set /p install_path=Folder path: 

:: Check if a path was entered
IF "%install_path%"=="" (
    ECHO [ERROR] No folder entered!
    pause
    exit /b
)

:: Start installation from the manifest
ECHO Starting installation from the manifest...
legendary.exe -v -y install fortnite --manifest "%~1" --download-only --no-install --game-folder "%install_path%" --base-url "https://epicgames-download1.akamaized.net/Builds/Fortnite/Content/CloudDir"

pause
ENDLOCAL
