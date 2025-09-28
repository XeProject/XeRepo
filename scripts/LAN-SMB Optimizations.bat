cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Optimizing LAN/SMB
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v autodisconnect /t REG_DWORD /d 0xFFFFFFFF /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v Size /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v EnableOplocks /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v IRPStackSize /t REG_DWORD /d 32 /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v SharingViolationDelay /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v SharingViolationRetries /t REG_DWORD /d 0 /f


