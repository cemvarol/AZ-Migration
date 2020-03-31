Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@cemvarol 
cemvarol
/
AZ-Migration
1
00
 Code Issues 0 Pull requests 0 Actions Projects 0 Wiki Security Insights Settings
AZ-Migration/Host2.ps1
@cemvarol cemvarol Update Host2.ps1
6c6e3dc 6 minutes ago
41 lines (23 sloc)  988 Bytes
  
netsh routing ip nat install

netsh routing ip nat add interface "Ethernet 2" mode=full

netsh routing ip nat add interface "vEthernet (VMs)"

cd $env:USERPROFILE\downloads

ren .\9600.16415.amd64fre.winblue_refresh.130928-2229_server_serverdatacentereval_en-us.vhd 2012-R2.vhd

mkdir c:\VMs

move 2012-R2.vhd c:\vms

cd c:\vms

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/Guest.ps1"
$output = ".\Guest.ps1"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output

Mount-VHD –Path ".\2012-R2.vhd"
copy C:\Guest.ps1 f:\

Dismount-VHD –Path ".\2012-R2.vhd"

New-VM -VHDPath .\2012-R2.vhd -Confirm -Generation 1 -MemoryStartupBytes 3GB -Name 2012-R2 -Path c:\VMs\ -Switch VMs –Force

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/Guest.ps1"
$output = ".\Guest.ps1"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output


cd\
 
virtmgmt.msc

Start-VM -Name 2012-R2


© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
