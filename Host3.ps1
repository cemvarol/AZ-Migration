﻿cd $env:USERPROFILE\downloads

ren .\9600.16415.amd64fre.winblue_refresh.130928-2229_server_serverdatacentereval_en-us.vhd 2012-R2.vhd

New-VM -VHDPath .\2012-R2.vhd -Confirm -Generation 1 -MemoryStartupBytes 4GB -Name 2012-R2 -Path c:\VMs\ -Switch VMs –Force


 virtmgmt.msc