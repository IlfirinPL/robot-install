

# Install Robotframework 
Install Robot Framework from scratch by Marcin Koperski

## With Admin Rights
Execute in powershell with admin rights (hint  Triple-click to select whole line), follow instructions
```
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.txt -OutFile $env:HOMEDRIVE/install-admin.txt;Set-ExecutionPolicy Bypass -Scope Process -Force; & "$env:HOMEDRIVE/install-admin.txt"
```

## Without Admin Rights
### 1 Recomended Solution Robot Framework Python 3.X  x64
#### 1.1 Install Python 3.X x64
Execute in powershell (hint  Triple-click to select whole line), follow instructions
```powershell
$url = "https://www.python.org/ftp/python/3.7.5/python-3.7.5-amd64.exe" ; $output = "$env:USERPROFILE/Downloads" ; $start_time = Get-Date; Import-Module BitsTransfer ; Start-BitsTransfer -Source $url -Destination $output; Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)" ; & "$env:USERPROFILE/Downloads/python-3.7.5-amd64.exe"
```

#### 1.2 Install/Setup git robot-framework
Execute in powershell (hint  Triple-click to select whole line), follow instructions
```powershell
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.txt -OutFile $env:HOMEDRIVE/install-no-admin.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; & "$env:HOMEDRIVE/install-no-admin.ps1"
```

### 2 Legacy Solution for Robot Python 2.7
#### 2.1 Python x64
Install python select option "Install just for me"
Link to [Python 2.7.X x64](https://www.python.org/ftp/python/2.7.17/python-2.7.17.amd64.msi) 

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/Python%202.7.17%20Setup.png" width="300">


#### 2.2 Visual Compiler for Python
Install [Microsoft Visual C++ Compiler for Python 2.7](https://www.microsoft.com/en-us/download/details.aspx?id=44266)

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/VC27.png" width="300">

#### 2.3 PowerShell
Execute in powershell (hint  Triple-click to select whole line), follow instructions

```powershell
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.python.2.7.txt -OutFile $env:HOMEDRIVE/install-no-admin.python.2.7.ps1;Set-ExecutionPolicy Bypass -Scope Process -Force; & "$env:HOMEDRIVE/install-no-admin.python.2.7.ps1"
```

#### 2.4 JAVA_JDK require ADMIN
open powershell as admin, copy body of link and execute, later follow instructions

```shell
choco install jdk8 -y
```

# How to 
## Open Powershell

open menu start and type **powershell** and click it

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/powershell.png" width="200">

or

use short cut win+x and click powershell
