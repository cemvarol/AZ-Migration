
cd\
mkdir SC

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/chrome.ps1"
$output = "C:\SC\1-Chrome.ps1"
Invoke-WebRequest -Uri $url -OutFile $output

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/Host1.ps1"
$output = "C:\SC\2-Set.ps1"
Invoke-WebRequest -Uri $url -OutFile $output

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/vhd.ps1"
$output = "C:\SC\3-VHD.ps1"
Invoke-WebRequest -Uri $url -OutFile $output

$url = "https://raw.githubusercontent.com/cemvarol/AZ-Migration/master/Host2.ps1"
$output = "C:\SC\4-VM.ps1"
Invoke-WebRequest -Uri $url -OutFile $output

Start-Process Powershell.exe -Argumentlist "-file C:\SC\1-Chrome.ps1"
Start-Process Powershell.exe -Argumentlist "-file C:\SC\2-Set.ps1"
Start-Process Powershell.exe -Argumentlist "-file C:\SC\3-VHD.ps1"

#Start-Process Powershell.exe -Argumentlist "-file C:\SC\4-VM.ps1"

