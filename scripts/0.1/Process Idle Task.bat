@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Process Idle Task
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Command ===

Rundll32.exe advapi32.dll,ProcessIdleTasks

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

