@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling FSO
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKCU\System\GameConfigStore" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 1 /f

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

