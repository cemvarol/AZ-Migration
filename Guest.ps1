Set-Service W32Time -StartupType Automatic
w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
w32tm /config /reliable:yes
net start w32time

w32tm /resync /nowait

Tzutil /s "GMT Standard Time"

Rename-NetAdapter -Name Eth* -NewName "EthernetX"

netsh int ip set address "EthernetX" static 1.1.1.2 255.0.0.0 1.1.1.1

netsh int ip set DNS "EthernetX" static 8.8.8.8

Add-WindowsFeature Web-Server, Web-Mgmt-Tools

Set-NetFirewallProfile -Enabled False

Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value “Hello From On prem”

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f

$Hname=($env:computername)

Rename-computer –computername $Hname –newname “2012-R2” 

Restart-Computer
