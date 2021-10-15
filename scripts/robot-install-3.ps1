Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

Write-Output "####### Setup/Update RobotFramework for Python $Env:PY_PYTHON #######"
$f = "packages.txt";
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/data/$f -OutFile $env:temp/$f
py -$Env:PY_PYTHON -m pip install -U -r $env:temp/$f


$f = "packages-robot.txt";
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/data/$f -OutFile $env:temp/$f
py -$Env:PY_PYTHON -m pip install -U -r $env:temp/$f

$f = "ide.txt";
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/data/$f -OutFile $env:temp/$f
py -$Env:PY_PYTHON -m pip install -U -r $env:temp/$f
