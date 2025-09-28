cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Maxxing Power Settings
echo =================

:: === powercfg Commands ===

powercfg -attributes SUB_PROCESSOR -ATTRIB_HID
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMINCORES 100
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR CPMINCORES 100
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100