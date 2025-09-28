cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Imrpoving CPU Handling
echo =================

:: === CPU Handling ===

bcdedit /set interruptaffinitypolicy 3
bcdedit /set maxprocstate 100