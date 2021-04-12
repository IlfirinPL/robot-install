Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

py -$Env:PY_PYTHON -m pip uninstall enum34 -yqq



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


Remove-Item $env:USERPROFILE/Desktop/RIDE.lnk -Force -ErrorAction silentlycontinue # Remove direct link to robot framework

# additonal optional libraries
#$f = "packages.vs.txt"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/data/$f -OutFile $env:temp/$f
#py -$Env:PY_PYTHON -m pip install $Env:Flags -r $env:temp/$f

copyRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/$BRANCH/RIDE-$Env:PY_PYTHON.cmd $env:USERPROFILE/Desktop/RIDE-$Env:PY_PYTHON.cmd
Write-Output "####### to start RIDE using Python 3.9 execute shortcut from Home Dir `n`n$env:USERPROFILE/Desktop/RIDE-$Env:PY_PYTHON.cmd`n#######"
