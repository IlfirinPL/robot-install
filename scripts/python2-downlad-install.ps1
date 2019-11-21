$url = "https://www.python.org/ftp/python/2.7.17/python-2.7.17.amd64.msi" ; 
$output = "$env:USERPROFILE/Downloads" ; 
$start_time = Get-Date; Import-Module BitsTransfer ; 
Start-BitsTransfer -Source $url -Destination $output; Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)" ;
& "$env:USERPROFILE/Downloads/python-2.7.17.amd64.msi"
