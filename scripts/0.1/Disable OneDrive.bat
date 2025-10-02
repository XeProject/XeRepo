@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling OneDrive
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === OneDrive Removal ===

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$OneDrivePath = $env:OneDrive; ^
   Write-Host 'Removing OneDrive'; ^
   $regPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\OneDriveSetup.exe'; ^
   $msStorePath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\*OneDrive*'; ^
   if (Test-Path $regPath) { ^
       $OneDriveUninstallString = Get-ItemPropertyValue $regPath -Name 'UninstallString'; ^
       $OneDriveExe, $OneDriveArgs = $OneDriveUninstallString.Split(' '); ^
       Start-Process -FilePath $OneDriveExe -ArgumentList "$OneDriveArgs /silent" -NoNewWindow -Wait; ^
   } elseif (Test-Path $msStorePath) { ^
       Write-Host 'OneDrive appears to be installed via Microsoft Store' -ForegroundColor Yellow; ^
       Start-Process -FilePath winget -ArgumentList 'uninstall -e --purge --accept-source-agreements Microsoft.OneDrive' -NoNewWindow -Wait; ^
   } else { ^
       Write-Host 'OneDrive does not seem to be installed' -ForegroundColor Red; ^
       Write-Host 'Running cleanup if OneDrive path exists' -ForegroundColor Red; ^
   }; ^
   if (Test-Path $OneDrivePath) { ^
       Write-Host 'Copying files from OneDrive folder to user profile'; ^
       Start-Process -FilePath powershell -ArgumentList \"robocopy '$OneDrivePath' '$($env:USERPROFILE.TrimEnd())\' /mov /e /xj\" -NoNewWindow -Wait; ^
       Remove-Item -Recurse -Force -ErrorAction SilentlyContinue \"$env:localappdata\Microsoft\OneDrive\"; ^
       Remove-Item -Recurse -Force -ErrorAction SilentlyContinue \"$env:localappdata\OneDrive\"; ^
       Remove-Item -Recurse -Force -ErrorAction SilentlyContinue \"$env:programdata\Microsoft OneDrive\"; ^
       Remove-Item -Recurse -Force -ErrorAction SilentlyContinue \"$env:systemdrive\OneDriveTemp\"; ^
       reg delete \"HKEY_CURRENT_USER\Software\Microsoft\OneDrive\" -f; ^
       If ((Get-ChildItem $OneDrivePath -Recurse | Measure-Object).Count -eq 0) {Remove-Item -Recurse -Force -ErrorAction SilentlyContinue $OneDrivePath}; ^
       Set-ItemProperty -Path 'HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0; ^
       Set-ItemProperty -Path 'HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Name 'System.IsPinnedToNameSpaceTree' -Value 0; ^
       reg load hku\Default C:\Users\Default\NTUSER.DAT; ^
       reg delete \"HKEY_USERS\Default\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\" /v OneDriveSetup /f; ^
       reg unload hku\Default; ^
       reg delete \"HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\" /v OneDrive /f; ^
       Remove-Item -Force -ErrorAction SilentlyContinue \"$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk\"; ^
       Get-ScheduledTask -TaskPath '\' -TaskName 'OneDrive*' -ea SilentlyContinue | Unregister-ScheduledTask -Confirm:$false; ^
       taskkill.exe /F /IM explorer.exe; ^
       Start-Process explorer.exe; ^
       Write-Host 'OneDrive removal complete.' -ForegroundColor Green; ^
   } else { ^
       Write-Host 'Nothing to clean up with OneDrive' -ForegroundColor Red; ^
   }"

echo.
echo.
echo ==== Done ====
echo.
echo.
pause
