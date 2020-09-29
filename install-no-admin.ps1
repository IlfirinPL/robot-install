Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force


if (!(Test-Path Env:PY_PYTHON)) {
    $Env:PY_PYTHON = "3.8"
}

if (!(Test-Path Env:branch)) {
    $Env:branch = "python.3.8"
}


timerStart

sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/chocolatey-non-admin.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/git-install-setup.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/npm-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/pip-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/robot-install-3.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/browser-drivers.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/systemInfo.ps1

explorer.exe $env:USERPROFILE\Desktop

timerStop  "### Installation Done. Time used:"

Write-Host -ForegroundColor GREEN -BackgroundColor black "### Always start RIDE using >> RIDE-3.7.cmd << on desktop"