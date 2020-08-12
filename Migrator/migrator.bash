a=$(az ad signed-in-user show --query userPrincipalName)
A=$(echo "$a" | sed -e 's/\(.*\)/\L\1/')
B=${A:$(echo `expr index "$A" @`)}
C=${B:: -24}
D=$(echo "$C"mig01)
RG=L03-Migration
VNet=Mig-VNet
Nsg=MigNSG
NsgR=MigRule1
L=eastus2
VM=MigHost
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

az storage account create -n $D -g $RG --kind Storage -l $L --sku Standard_LRS


az network nsg create -g $RG -n $Nsg
az network nsg rule create -g $RG --nsg-name $Nsg -n $NsgR --priority 100 --destination-port-ranges "*" --direction Inbound


az network vnet create --resource-group $RG --name $VNet  --address-prefixes $AP --subnet-name SN01 --subnet-prefix $SN01

export SUBNETID=$(az network vnet subnet show --resource-group $RG --vnet-name $VNet --name SN01 --query id -o tsv)
export SUBNETN=$(az network vnet subnet show --resource-group $RG --vnet-name $VNet --name SN01 --query name -o tsv)

az network vnet subnet update -g $RG --vnet-name $VNet -n $SUBNETN --network-security-group $Nsg

az vm create --resource-group $RG -n $VM -l $L --image $OS2 --admin-username $user --admin-password $pass --size $VMSize2 --public-ip-address $Pip --public-ip-address-allocation static --subnet $SUBNETID --boot-diagnostics-storage $D --license-type Windows_Server --nsg ""


