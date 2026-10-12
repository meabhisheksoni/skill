@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: ---------------------------------------------------
:: Configure UTF-8 encoding
:: ---------------------------------------------------
chcp 65001 >nul 2>&1

set "SCRIPT_DIR=%~dp0"
if "%SCRIPT_DIR:~-1%"=="\" set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"

echo ===================================================
echo     CRG TOOLCHAIN 1-CLICK BOOTSTRAP LAUNCHER
echo ===================================================
echo.
echo Launching automated environment setup for Refactor Skill...
echo.

powershell.exe -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\scripts\setup-crg.ps1" -RepoRoot "%CD%"

if %ERRORLEVEL% equ 0 (
    echo.
    echo [SUCCESS] CRG Toolchain is installed and configured!
) else (
    echo.
    echo [ERROR] Setup encountered an issue (Exit Code: %ERRORLEVEL%).
)

echo.
pause
