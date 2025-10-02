@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling Memory Intergity
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v HVCIMATRequired /t REG_DWORD /d 0 /f

:: === Commands ===

bcdedit /set hypervisorsettings Off
bcdedit /set hypervisorlaunchtype Off

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

