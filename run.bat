@echo off
title Image Processing DAA - Java Web App
echo Starting Image Processing with Divide and Conquer...
where mvn >nul 2>nul
if errorlevel 1 (
  echo ERROR: Maven was not found on PATH. Install Maven or run from a configured VS Code terminal.
  pause
  exit /b 1
)
mvn spring-boot:run
pause
