netsh int ip set address "Ethernet" static 1.1.1.2 255.0.0.0 1.1.1.1

netsh int ip set DNS "Ethernet" static 8.8.8.8

Add-WindowsFeature Web-Server, Web-Mgmt-Tools

Set-NetFirewallProfile -Enabled False

Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value “Hello From On prem”

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f

$Hname=($env:computername)

Rename-computer –computername $Hname –newname “2012-R2” 

Restart-Computer