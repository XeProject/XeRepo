cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Disabling Windows Tasks
echo =================

:: === Windows Tasks ===

schtasks /End /TN "Microsoft\Windows\Maintenance\WinSAT"
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable

schtasks /End /TN "Microsoft\Windows\Defrag\ScheduledDefrag"
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable

schtasks /End /TN "Microsoft\Windows\UpdateOrchestrator\Reboot"
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Reboot" /Disable

schtasks /End /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_ReadyToReboot"
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_ReadyToReboot" /Disable

schtasks /End /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_Update"
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_Update" /Disable

schtasks /End /TN "Microsoft\Windows\Autochk\Proxy"
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable

schtasks /End /TN "Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable

schtasks /End /TN "Microsoft\Windows\Superfetch\SysMain"
schtasks /Change /TN "Microsoft\Windows\Superfetch\SysMain" /Disable

schtasks /End /TN "Microsoft\Edge\EdgeUpdate"
schtasks /Change /TN "Microsoft\Edge\EdgeUpdate" /Disable

schtasks /End /TN "Microsoft\Windows\WindowsUpdate\AutomaticAppUpdate"
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\AutomaticAppUpdate" /Disable

schtasks /End /TN "Microsoft\Windows\TabletPC\TabletPCEventFilter"
schtasks /Change /TN "Microsoft\Windows\TabletPC\TabletPCEventFilter" /Disable

schtasks /End /TN "Microsoft\Windows\Diagnosis\OnlineCrashDump"
schtasks /Change /TN "Microsoft\Windows\Diagnosis\OnlineCrashDump" /Disable

schtasks /End /TN "Microsoft\Windows\Windows Compatibility\AblibLogger"
schtasks /Change /TN "Microsoft\Windows\Windows Compatibility\AblibLogger" /Disable

schtasks /End /TN "Microsoft\Windows\Windows Error Reporting\ErrorReporting"
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\ErrorReporting" /Disable

schtasks /End /TN "Microsoft\Windows\Diagnostics\Scheduled"
schtasks /Change /TN "Microsoft\Windows\Diagnostics\Scheduled" /Disable

schtasks /End /TN "Microsoft\Windows\Search\GatherUserDiaries"
schtasks /Change /TN "Microsoft\Windows\Search\GatherUserDiaries" /Disable
