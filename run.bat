@echo off
title JARVIS - Made by black625
echo Starting JARVIS AI Assistant (Made by black625)...
python main.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo JARVIS exited with an error. If dependencies are missing, run setup.py or build_exe.bat
    pause
)
