###### Table of content
- [1 Install Robotframework](#1-install-robotframework)
  * [1.1 With Admin Rights](#11-with-admin-rights)
  * [1.2 Without Admin Rights](#12-without-admin-rights)
    + [1.2.1 Recomended Solution Robot Framework Python 3.X](#121-recomended-solution-robot-framework-python-3x)
      - [1.2.1.1 Python 3.X](#1211-python-3x)
      - [1.2.1.2 PowerShell](#1212-powershell)
    + [1.2.2 Legacy Solution for Robot Python 2.7](#122-legacy-solution-for-robot-python-27)
      - [1.2.2.1 Python](#1221-python)
      - [1.2.2.2 Visual Compiler for Python](#1222-visual-compiler-for-python)
      - [1.2.2.3 PowerShell](#1223-powershell)
      - [1.2.2.4 JAVA_JDK require ADMIN](#1224-java-jdk-require-admin)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


# 1 Install Robotframework 
Install Robot Framework from scratch by Marcin Koperski

## 1.1 With Admin Rights
open powershell, copy body of link and execute, later follow instructions

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/powershell.png" width="200">

copy and paste content of link 

https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-admin.txt

follow instructions in shell

## 1.2 Without Admin Rights
### 1.2.1 Recomended Solution Robot Framework Python 3.X  x64
#### 1.2.1.1 Python 3.X x64
Install python select option "Install just for me"
Link to [Python 3.X](https://www.python.org/ftp/python/3.7.5/python-3.7.5-amd64.exe) 

```powershell
$url = "https://www.python.org/ftp/python/3.7.5/python-3.7.5-amd64.exe"
$output = "$env:USERPROFILE/Downloads"
$start_time = Get-Date
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
& "$env:USERPROFILE/Downloads/python-3.7.5-amd64.exe"
```


<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/python3.X-setup.png" width="300">


#### 1.2.1.2 PowerShell

open powershell, copy body of link and execute, later follow instructions

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/powershell.png" width="200">

copy and paste content of link 

https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.txt

follow instructions in shell


### 1.2.2 Legacy Solution for Robot Python 2.7
#### 1.2.2.1 Python x64
Install python select option "Install just for me"
Link to [Python 2.7.X x64](https://www.python.org/ftp/python/2.7.17/python-2.7.17.amd64.msi) 

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/Python%202.7.17%20Setup.png" width="300">


#### 1.2.2.2 Visual Compiler for Python
Install [Microsoft Visual C++ Compiler for Python 2.7](https://www.microsoft.com/en-us/download/details.aspx?id=44266)

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/VC27.png" width="300">

#### 1.2.2.3 PowerShell
open powershell, copy body of link and execute, later follow instructions

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/powershell.png" width="200">

copy and paste content of link 

https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.python.2.7.txt

follow instructions in shell

#### 1.2.2.4 JAVA_JDK require ADMIN
open powershell as admin, copy body of link and execute, later follow instructions
```
choco install jdk8 -y
```
