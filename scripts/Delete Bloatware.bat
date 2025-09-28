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

:: === DISM Tweaks ===

dism /Online /Remove-ProvisionedAppxPackage /PackageName:MicrosoftCorporationII.QuickAssist
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Copilot
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingWeather
dism /Online /Remove-ProvisionedAppxPackage /PackageName:MicrosoftCorporationII.MicrosoftFamily
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingSearch
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Clipchamp.Clipchamp
dism /Online /Remove-ProvisionedAppxPackage /PackageName:MSTeams
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Todos
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingNews
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.OutlookForWindows
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsAlarms
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection

echo.
echo.
echo ==== Done ====
echo.
echo.
pause

