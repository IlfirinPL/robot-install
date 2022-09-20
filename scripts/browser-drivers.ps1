Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force
py -m pip install -q -U --no-deps webdrivermanager
$env:Path += ";C:\Python310\scripts;${env:LOCALAPPDATA}\Programs\Python\Python310\scripts"
webdrivermanager chrome firefox edge

$temp = python -c "import sys; print(sys.executable)"
$pythonPath = $temp -replace "\\python.exe", ""
Write-Output    "Using Python path $pythonPath"
Copy-Item $env:LOCALAPPDATA\salabs_\WebDriverManager\bin\* $pythonPath
