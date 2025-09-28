cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Optimizing Notifications
echo =================

:: === Tweaks ===

fsutil behavior query DisableDeleteNotify
fsutil behavior set disabledeletenotify 0
