@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Imrpoving CPU Handling
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === CPU Handling ===

bcdedit /set interruptaffinitypolicy 3
bcdedit /set maxprocstate 100

echo.
echo.
echo ==== Done ====
echo.
echo.
pause