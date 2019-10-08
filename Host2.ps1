netsh routing ip nat install

netsh routing ip nat add interface "Ethernet 2" mode=full

netsh routing ip nat add interface "vEthernet (VMs)"

cd downloads

ren .\9600.16415.amd64fre.winblue_refresh.130928-2229_server_serverdatacentereval_en-us.vhd 2012R2.vhd

New-VM -VHDPath .\2012R2.vhd -Confirm -Generation 1 -MemoryStartupBytes 4GB -Name 2012-Re2 -Path c:\VMs\ -Switch VMs –Force


 virtmgmt.msc