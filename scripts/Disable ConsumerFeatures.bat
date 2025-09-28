@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling ConsumerFeatures
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

