Write-Output "####### Setup Chocolatey #######"
if (-Not (Get-Command "choco" -ErrorAction SilentlyContinue) ) { 
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    # Set directory for installation - Chocolatey does not lock
    # down the directory if not the default
    $InstallDir = 'C:\ProgramData\chocoportable'
    $env:ChocolateyInstall = "$InstallDir"

    # If your PowerShell Execution policy is restrictive, you may
    # not be able to get around that. Try setting your session to
    # Bypass.

    # All install options - offline, proxy, etc at
    # https://chocolatey.org/install
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}


choco source list 
choco --version 
