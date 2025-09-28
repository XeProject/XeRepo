@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo KBM Fix
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKU\.DEFAULT\Control Panel\Mouse" /v ActiveWindowTracking /t REG_DWORD /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetMouseDragOutWidth /t REG_SZ /d 20 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetMouseSideMoveWidth /t REG_SZ /d 50 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetMouseWidth /t REG_SZ /d 1 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetPenDragOutWidth /t REG_SZ /d 30 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetPenSideMoveWidth /t REG_SZ /d 50 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DockTargetPenWidth /t REG_SZ /d 30 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DoubleClickHeight /t REG_SZ /d 4 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DoubleClickSpeed /t REG_SZ /d 500 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v DoubleClickWidth /t REG_SZ /d 4 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v MouseSensitivity /t REG_SZ /d 10 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v SmoothMouseXCurve /t REG_BINARY /d 0000000000000000156E00000000000000400100000000000029DC0300000000000000280000000000 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v SmoothMouseYCurve /t REG_BINARY /d 0000000000000000FD11010000000000002404000000000000FC12000000000000C0BB010000000000 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v SnapToDefaultButton /t REG_SZ /d 0 /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v KeyboardDataQueueSize /t REG_DWORD /d 32 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v MouseDataQueueSize /t REG_DWORD /d 32 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

