Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/raw/master/scripts/helper-source.ps1 -OutFile $env:temp/import.ps1; Set-ExecutionPolicy Bypass -Scope Process -Force; Import-module $env:temp/import.ps1 -Force
py -m pip install -q -U --no-deps webdrivermanager
$env:Path += ";C:\Python39\scripts;${env:LOCALAPPDATA}\Programs\Python\Python39\scripts"
webdrivermanager chrome firefox edge
Copy-Item $env:LOCALAPPDATA\salabs_\WebDriverManager\bin\* C:\Python39
