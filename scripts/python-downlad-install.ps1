$url = "https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe"
$output = "$env:USERPROFILE/Downloads"
$start_time = Get-Date; Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output; Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
& "$env:USERPROFILE/Downloads/python-3.9.6-amd64.exe"
