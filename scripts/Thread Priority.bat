@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Prioritizing Threads
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v ThreadPriority /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v ThreadPriority /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v ThreadPriority /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v ThreadPriority /t REG_DWORD /d 31 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

