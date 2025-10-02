@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling Bing Searches
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause