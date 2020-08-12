a=$(az ad signed-in-user show --query userPrincipalName)
A=$(echo "$a" | sed -e 's/\(.*\)/\L\1/')
B=${A:$(echo `expr index "$A" @`)}
C=${B:: -24}
D=$(echo "$C"mig01)
RG=MigratorX
VNet=Mig-VNet
Nsg=MigNSG
NsgR=MigRule1
L=eastus2
VM=Migrator
OS1=Win2019DataCenter
OS2=MicrosoftWindowsServer:WindowsServer:2019-Datacenter-with-Containers:17763.1339.2007101755
OSX=MicrosoftWindowsServer:WindowsServer:2019-Datacenter-with-Containers:17763.557.20190604
VMSize=standard_F8s_v2
VMSizeX=standard_D4s_v3
VMSize2=standard_D8s_v3
Pip=$(echo "$VM"Pip)
AP="10.205.0.0/16"
SN01="10.205.1.0/24"
user=cem
pass=1q2w3e4r5t6y*

az group create -n $RG -l $L
