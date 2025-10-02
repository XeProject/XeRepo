@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Prioritizing Foreground 
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl /v Win32PrioritySeparation /t REG_DWORD /d 26 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

