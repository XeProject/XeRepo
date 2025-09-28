@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Optimizing Notifications
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Tweaks ===

fsutil behavior query DisableDeleteNotify
fsutil behavior set disabledeletenotify 0

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

