Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

$Env:Flags = '-U'

if (!(Test-Path Env:PY_PYTHON)) {
    $Env:PY_PYTHON = "3.8"
}

if (!(Test-Path Env:branch)) {
    $Env:branch = "python.3.8"
}

Write-Output "####### Setup/Update RobotFramework for Python $Env:PY_PYTHON #######"

$f = "packages.txt"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/-/raw/$Env:branch/data/$f -OutFile $env:temp/$f 
py -m pip install $Env:Flags --user -r $env:temp/$f 


#$f = "packages.vs.txt"; Invoke-WebRequest -Uri $Env:gitPath/data/$f -OutFile $env:temp/$f 
#py -$Env:PY_PYTHON -m pip install $Env:Flags --user -r $env:temp/$f 


copyRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/-/raw/$Env:branch/RIDE-3.8.cmd $env:USERPROFILE/Desktop/RIDE-3.8.cmd
Remove-Item $env:USERPROFILE/Desktop/RIDE.lnk -Force -ErrorAction silentlycontinue

Write-Output "####### to start RIDE using Python ${Env:PY_PYTHON} execute shortcut from Home Dir `n`n$env:USERPROFILE/Desktop/RIDE-${Env:PY_PYTHON}.cmd`n#######"

