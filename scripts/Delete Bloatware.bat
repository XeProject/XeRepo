cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Deleting Bloatware
echo =================

:: === DISM Tweaks ===

dism /Online /Remove-ProvisionedAppxPackage /PackageName:MicrosoftCorporationII.QuickAssist
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub
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
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneMusic
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneVideo
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Wallet
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GetHelp
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Getstarted
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Microsoft3DViewer
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MixedReality.Portal
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Office.OneNote
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.People
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ScreenSketch
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.SkypeApp
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.OutlookForWindows
dism /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Paint
dism /Online Remove-ProvisionedAppxPackage /PackageName:Microsoft.Todos

timeout /t 15 /nobreak >nul

dism /Online /Remove-Capability /CapabilityName:App.StepsRecorder
dism /Online /Remove-Capability /CapabilityName:App.Support.QuickAssist
dism /Online /Remove-Capability /CapabilityName:Browser.InternetExplorer
dism /Online /Remove-Capability /CapabilityName:Hello.Face.18967
dism /Online /Remove-Capability /CapabilityName:Hello.Face.Migration.18967
dism /Online /Remove-Capability /CapabilityName:MathRecognizer
dism /Online /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad
dism /Online /Remove-Capability /CapabilityName:OneCoreUAP.OneSync
dism /Online /Remove-Capability /CapabilityName:OpenSSH.Client
dism /Online /Remove-Capability /CapabilityName:Print.Fax.Scan
dism /Online /Remove-Capability /CapabilityName:Print.Management.Console

timeout /t 15 /nobreak >nul

dism /Online /Cleanup-Image /StartComponentCleanup

timeout /t 15 /nobreak >nul

dism /Online /Cleanup-Image /StartComponentCleanup /ResetBase




