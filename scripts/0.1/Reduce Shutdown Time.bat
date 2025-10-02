@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Reducing Shutdown Time
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LowMemoryUsageTimeout" /t REG_DWORD /d 2 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause