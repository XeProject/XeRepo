cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling EAD
echo =================

:: === Reset Explorer Folder View Settings ===

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$bags = 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags'; ^
   $bagMRU = 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU'; ^
   Remove-Item -Path $bags -Recurse -Force -ErrorAction SilentlyContinue; ^
   Write-Host 'Removed ' $bags; ^
   Remove-Item -Path $bagMRU -Recurse -Force -ErrorAction SilentlyContinue; ^
   Write-Host 'Removed ' $bagMRU; ^
   $allFolders = 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell'; ^
   if (!(Test-Path $allFolders)) {New-Item -Path $allFolders -Force | Out-Null; Write-Host 'Created ' $allFolders}; ^
   New-ItemProperty -Path $allFolders -Name 'FolderType' -Value 'NotSpecified' -PropertyType String -Force | Out-Null; ^