$version = "3.11.2"
$url = "https://www.python.org/ftp/python/" + $version + "/python-" + $version + "-amd64.exe"
$output = "$env:TEMP"
$start_time = Get-Date; Import-Module BitsTransfer
Start-BitsTransfer -Source ${url} -Destination ${output}; Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
$cmd = "$output/python-" + ${version} + "-amd64.exe"
$cmd | Invoke-Expression
Write-Output "Remove-Item  $cmd"