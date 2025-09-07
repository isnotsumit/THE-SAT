@echo off
echo Smart Tourist Companion - Quick Start Script
echo ==========================================
echo.

echo Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH
    echo.
    echo Please install Node.js from: https://nodejs.org/
    echo After installation, restart this script.
    echo.
    pause
    exit /b 1
)

echo Node.js found! Version:
node --version
echo.

echo Checking npm...
npm --version
echo.

echo Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo Setup complete! 
echo.
echo Demo credentials:
echo Email: user@example.com
echo Password: password123
echo.
echo Starting development server...
echo The app will open at: http://localhost:9002
echo.
echo Press Ctrl+C to stop the server
echo.

npm run dev
