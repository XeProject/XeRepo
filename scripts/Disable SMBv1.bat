cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling SMBv1
echo =================

:: === Disable ===

powershell -Command "Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart"

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d 0 /f