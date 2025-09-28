cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Prefering IPv4
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 32 /f