<#  
to import to shell this helper paste this
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force
#>
function sourceRemote ($url) { Invoke-WebRequest -Uri $url -OutFile $env:tmp/tmp.ps1 ; Set-ExecutionPolicy Bypass -Scope Process -Force; & "$env:tmp/tmp.ps1" ; }
function sourceRemoteExp ($url) { iex ((New-Object System.Net.WebClient).DownloadString($url)) }
function copyRemote ($url, $destPath) { Invoke-WebRequest -Uri $url -OutFile $destPath }
function timerStart () { $env:StartDate = (GET-DATE) }
function timerStop ($msg) { Write-Output "$msg $(NEW-TIMESPAN -Start $env:StartDate -End (GET-DATE))" }
