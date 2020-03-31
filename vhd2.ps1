$url = "http://download.microsoft.com/download/5/8/1/58147EF7-5E3C-4107-B7FE-F296B05F435F/9600.16415.amd64fre.winblue_refresh.130928-2229_server_serverdatacentereval_en-us.vhd"
$output = "$env:USERPROFILE\downloads\9600.16415.amd64fre.winblue_refresh.130928-2229_server_serverdatacentereval_en-us.vhd"
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)" 

