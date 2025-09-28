cls

echo.
echo.
echo ==== @PUR3S7 ====
echo Optimizing TCP (Net)
echo =================

:: === Registry Tweaks ===

reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d 16 /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplorer.exe" /t REG_DWORD /d 16 /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d 16 /f
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplorer.exe" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB2" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 48 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 100 /f
reg add "HKCR\NetworkProxy" /v "V2CSPNodePath" /t REG_SZ /d "./Vendor/MSFT/NetworkProxy" /f
reg add "HKCR\NetworkProxy" /v "WAPNodeProcessor" /t REG_SZ /d "{FB11047A-4051-4d1d-9DCA-C80C5DF98D70}" /f

:: === Batch Commands ===

netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent

:: === Powershell Commands ===

PowerShell.exe Set-NetTCPSetting -SettingName internet -AutoTuningLevelLocal normal
PowerShell.exe Set-NetOffloadGlobalSetting -ReceiveSideScaling enabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -EcnCapability disabled
PowerShell.exe Set-NetOffloadGlobalSetting -Chimney disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -Timestamps disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -MaxSynRetransmissions 2
PowerShell.exe Set-NetTCPSetting -SettingName internet -NonSackRttResiliency disabled
PowerShell.exe Set-NetTCPSetting -SettingName internet -InitialRto 2000
PowerShell.exe Set-NetTCPSetting -SettingName internet -MinRto 300
