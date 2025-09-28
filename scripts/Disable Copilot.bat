cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Deleting Copilot
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot" /v IsCopilotAvailable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot" /v CopilotDisabledReason /t REG_SZ /d IsEnabledForGeographicRegionFailed /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsCopilot" /v AllowCopilotRuntime /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v {CB3B0003-8088-4EDE-8769-8B354AB2FF8C} /t REG_SZ /d "" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Shell\Copilot\BingChat" /v IsUserEligible /t REG_DWORD /d 0 /f

:: === Remove Copilot Packages ===

powershell -Command "Get-AppxPackage -AllUsers *Copilot* | Remove-AppxPackage -AllUsers"
powershell -Command "Get-AppxProvisionedPackage -Online | Where-Object PackageName -like '*Copilot*' | Remove-AppxProvisionedPackage -Online"
dism /online /remove-package /package-name:Microsoft.Windows.Copilot