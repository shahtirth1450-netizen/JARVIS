@echo off
title JARVIS Builder - Made by black625
echo ===================================================
echo     JARVIS Executable Builder - Made by black625
echo ===================================================
echo.

echo Checking Python installation...
python --version
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Python is not installed or not in PATH!
    pause
    exit /b 1
)

echo.
echo [1/2] Installing PyInstaller and dependencies...
python -m pip install pyinstaller -r requirements.txt

echo.
echo [2/2] Building JARVIS.exe via PyInstaller...
python -m PyInstaller --noconfirm --clean JARVIS.spec

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===================================================
    echo  SUCCESS! JARVIS.exe has been built successfully!
    echo  Location: dist\JARVIS\JARVIS.exe
    echo  Made by black625
    echo ===================================================
) else (
    echo.
    echo [ERROR] Build failed! Please inspect the logs above.
)
pause
