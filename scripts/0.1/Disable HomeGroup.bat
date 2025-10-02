@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling HomeGroup
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === SC Commands ===

sc config HomeGroupListener start= demand
sc config HomeGroupProvider start= Manual

echo.
echo.
echo ==== Done ====
echo.
echo.
pause