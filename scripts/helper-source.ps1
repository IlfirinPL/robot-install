<#
to import to shell this helper paste this
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force
#>
Add-Type -AssemblyName System.IO.Compression.FileSystem
function sourceRemote ($url) { Invoke-WebRequest -Uri $url -OutFile $env:tmp/tmp.ps1 ; Set-ExecutionPolicy Bypass -Scope Process -Force; & "$env:tmp/tmp.ps1" ; }
function sourceRemoteExp ($url) { iex ((New-Object System.Net.WebClient).DownloadString($url)) }
function copyRemote ($url, $destPath) { Invoke-WebRequest -Uri $url -OutFile $destPath }
function timerStart () { $env:StartDate = (GET-DATE) }
function timerStop ($msg) { Write-Output "$msg $(NEW-TIMESPAN -Start $env:StartDate -End (GET-DATE))" }
function Unzip { param([string]$zipfile, [string]$outpath)   [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath) }
$ProgressPreference = 'SilentlyContinue'

if (!(Test-Path Env:PY_PYTHON)) {
    $Env:PY_PYTHON = "3.9"
}
if (!(Test-Path Env:branch)) {
    $BRANCH = "master"
}