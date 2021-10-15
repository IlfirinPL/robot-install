Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

Write-Output "####### Setup PIP $Env:PY_PYTHON #######"
py -m ensurepip
py -m pip install -U pip wheel setuptools