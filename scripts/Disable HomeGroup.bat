cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling HomeGroup
echo =================

:: === SC Commands ===

sc config HomeGroupListener start= demand
sc config HomeGroupProvider start= demand