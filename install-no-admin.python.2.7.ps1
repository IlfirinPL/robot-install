Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

$Env:PY_PYTHON = 2.7

timerStart

sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/chocolatey-non-admin.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/git-install-setup.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/npm-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/pip-config.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/install-robot-2.7.ps1
sourceRemoteExp https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/systemInfo.ps1

explorer.exe $env:HOMEDRIVE

timerStop  "### Installation Done. Time used:"
