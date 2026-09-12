@echo off
title LabLens AI - Launching Full-Stack Application...
color 0A

echo ========================================================
echo          STARTING LABLENS AI FULL-STACK SERVER
echo ========================================================
echo.

cd /d "%~dp0backend"

echo Checking Python environment...
"C:\Users\Ayesha Waheed\AppData\Local\Programs\Python\Python311\python.exe" -c "import fastapi, uvicorn; print('[OK] Core dependencies verified.')"

echo.
echo Launching Web Application on http://127.0.0.1:8000 ...
echo Press Ctrl+C in this window to stop the server.
echo.

start http://127.0.0.1:8000

"C:\Users\Ayesha Waheed\AppData\Local\Programs\Python\Python311\python.exe" -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload

pause
