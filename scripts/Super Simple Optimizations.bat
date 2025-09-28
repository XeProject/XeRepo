cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Simple Optimizations
echo =================

:: === Registry Tweaks ===

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v MaintenanceDisabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 0 /f

:: === SC Commands ===

sc config "WSearch" start=disabled
net stop "WSearch"

sc config "SysMain" start=disabled
net stop "SysMain"

sc config "WSearch" start=disabled
net stop "WSearch"

:: === Tasks ===

schtasks /Delete /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /F
