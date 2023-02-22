Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

$Env:PY_PYTHON = "3.11"

timerStart

sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/chocolatey-non-admin.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/git-install-setup.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/npm-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/pip-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/robot-install-3.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/browser-drivers.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/scripts/systemInfo.ps1

explorer.exe $env:USERPROFILE\Desktop

timerStop  "### Installation Done. Time used:"

Write-Host -ForegroundColor GREEN -BackgroundColor black "### Always start RIDE using >> RIDE-$Env:PY_PYTHON.cmd << on desktop"