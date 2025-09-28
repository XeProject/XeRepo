cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling ConsumerFeatures
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f

