Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force

Write-Output "####### Setup RobotFramework for Python $Env:PY_PYTHON #######"
$f = "packages-2.7-legacy.txt"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/data/$f -OutFile $env:temp/$f 

if (Get-Command "py" -ErrorAction SilentlyContinue) { 
    py -m pip install -U -r $env:temp/$f 
    py -m robot --version 
    
}
else {
    python -m pip install -U -r $env:temp/$f
    python -m robot --version 
    
}

copyRemote https://raw.githubusercontent.com/IlfirinPL/robot-install/master/RIDE-2.7.cmd $env:HOMEDRIVE/RIDE-2.7.cmd

Write-Output "####### to start RIDE using Python 2.7 execute shortcut from Home Dir `n`n$env:HOMEDRIVE/$f`n`n#######"
