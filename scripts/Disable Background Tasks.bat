cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling BG Tasks
echo =================

:: === Registry Tweaks ===

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
