@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling BG Tasks
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause