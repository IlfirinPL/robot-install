$python_version = "3.8.6"

$url = "https://www.python.org/ftp/python/$python_version/python-$python_version-amd64.exe" ; 
$output = "$env:USERPROFILE/Downloads" ; 
$start_time = Get-Date; Import-Module BitsTransfer ; 
Start-BitsTransfer -Source $url -Destination $output; Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)" ;
& "$env:USERPROFILE/Downloads/python-$python_version-amd64.exe"
