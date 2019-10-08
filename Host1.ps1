Set-NetFirewallProfile -Enabled False

Install-WindowsFeature Routing, RSAT-RemoteAccess, Hyper-V-Tools, Hyper-V-PowerShell

New-VMSwitch -SwitchName VMs -SwitchType Internal

Netsh int ip set address "vEthernet (VMs)" static 1.1.1.1 255.0.0.0

rrasmgmt.msc

