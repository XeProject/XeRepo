cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Taskbar End Task
echo =================

:: === Powershell Stuff ===

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings'; ^
$name = 'TaskbarEndTask'; ^
$value = 1; ^
if (-not (Test-Path $path)) { New-Item -Path $path -Force | Out-Null }; ^
New-ItemProperty -Path $path -Name $name -PropertyType DWord -Value $value -Force | Out-Null"