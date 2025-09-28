cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling WPBT
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v DisableWpbtExecution /t REG_DWORD /d 1 /f