Write-Output "####### Setup Chocolatey #######"
if (-Not (Get-Command "choco" -ErrorAction SilentlyContinue) ) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

choco --version
