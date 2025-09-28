@echo off
echo.
echo.
echo ==== @PUR3S7 ====
echo Deleting Copilot
echo =================
echo.
echo.
echo ==== Start ====
echo.
echo.

:: === Registry Tweaks ===

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableAIDataAnalysis /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v AllowRecallEnablement /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v VerifiedAndReputablePolicyState /t REG_DWORD /d 0 /f

:: === Remove Recall Feature ===

dism /Online /Disable-Feature /FeatureName:Recall /Quiet /NoRestart

echo.
echo.
echo ==== Done ====
echo.
echo.
pause