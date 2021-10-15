Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

if (!(Test-Path Env:PY_PYTHON)) {
    $Env:PY_PYTHON = "3.9"
}

if (!(Test-Path Env:branch)) {
    $Env:branch = "master"
}
timerStart

sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/chocolatey-admin.ps1

Write-Output "####### Setup Install Python  #######"
choco install python -y

$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/git-install-setup.ps1
sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/npm-config.ps1
sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/pip-config.ps1
sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/robot-install-3.ps1
sourceRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/scripts/autoit-install.ps1


timerStop  "### Installation Done. Time used: $(NEW-TIMESPAN -Start $StartDate -End (GET-DATE))"
