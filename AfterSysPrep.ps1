Add-AzAccount 

Convert-VHD -Path C:\VMs\2012-R2.vhd -DestinationPath C:\VMs\2012Ca.vhd -VHDType fixed

Start-Sleep -s 20

$vhdSizeBytes = (Get-Item "C:\VMs\2012Ca.vhd").length

$diskconfig = New-AzDiskConfig -SkuName 'Standard_LRS' -OsType 'Windows' -UploadSizeInBytes $vhdSizeBytes -Location 'EastUs' -CreateOption 'Upload'

New-AzDisk -ResourceGroupName "Migrator" -DiskName "cems.vhd" -Disk $diskconfig


$diskSas = Grant-AzDiskAccess -ResourceGroupName 'Migrator' -DiskName 'cems.vhd' -DurationInSecond 86400 -Access 'Write'

 $disk = Get-AzDisk -ResourceGroupName 'Migrator' -DiskName 'cems.vhd'

 cd C:\VMs
 .\azcopy.exe copy "2012Ca.vhd" $diskSas.AccessSAS --blob-type PageBlob
 

 Revoke-AzDiskAccess -ResourceGroupName 'Migrator' -DiskName 'cems.vhd'


 Start-Sleep -s 20

$disk = Get-AzDisk -ResourceGroupName 'Migrator' -DiskName 'cems.vhd'
$location = 'East US'
$imageName = 'cems'
$rgName = 'Migrator'



$imageConfig = New-AzImageConfig `
   -Location $location
$imageConfig = Set-AzImageOsDisk `
   -Image $imageConfig `
   -OsState Generalized `
   -OsType Windows `
   -ManagedDiskId $disk.Id


   $image = New-AzImage `
   -ImageName $imageName `
   -ResourceGroupName $rgName `
   -Image $imageConfig


   New-AzVm `
    -ResourceGroupName $rgName `
    -Name "CemsVm" `
    -Image $image.Id `
    -Location $location `
    -VirtualNetworkName "Mig-VNet" `
    -SubnetName "SN01" `
    -SecurityGroupName "MigNSG" `
    -PublicIpAddressName "myPIP" 
