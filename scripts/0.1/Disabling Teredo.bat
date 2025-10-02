@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling Teredo
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Disabling Teredo ===

netsh interface teredo set state disabled

echo.
echo.
echo ==== Done ====
echo.
echo.
pause