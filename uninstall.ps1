Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

if (!(Test-Path Env:PY_PYTHON)) {
    $Env:PY_PYTHON = "3.8"
}

if (!(Test-Path Env:branch)) {
    $Env:branch = "python.3.8"
}
Write-Output "####### Setup RobotFramework for Python $Env:PY_PYTHON #######"

$f = "packages.txt"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/$Env:branch/data/$f -OutFile $env:temp/$f 
py -$Env:PY_PYTHON -m pip uninstall -y -r $env:temp/$f 
