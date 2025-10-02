@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling Xbox Tasks
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Tasks ===

schtasks /end /tn "\Microsoft\XblGameSave\XblGameSaveTask"
schtasks /change /tn "\Microsoft\XblGameSave\XblGameSaveTask" /disable

schtasks /end /tn "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
schtasks /change /tn "\Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable

echo.
echo.
echo ==== Done ====
echo.
echo.
pause