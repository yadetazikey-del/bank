@echo off
title Elite Bank System Runner
cls
echo ============================================
echo      ELITE BANK MANAGEMENT SYSTEM
echo ============================================
echo.

:: Check for bin folder
if not exist bin mkdir bin

echo [1/3] Compiling source code...
javac -cp "lib/*" -d bin src/com/bank/db/*.java src/com/bank/ui/*.java src/com/bank/*.java

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Compilation failed! Please check if JDK is installed.
    pause
    exit /b %errorlevel%
)

echo [2/3] Verification complete.
echo [3/3] Starting Application environment...
echo.

:: Run the application with libraries in classpath
java -cp "bin;lib/*" com.bank.Main

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Application crashed or stopped unexpectedly.
    pause
)

echo.
echo Operation Finished.
pause
