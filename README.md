- [Install Robotframework](#install-robotframework)
  * [With Admin Rights](#with-admin-rights)
  * [Without Admin Rights](#without-admin-rights)
    + [1 Recomended Solution Robot Framework Python 3.X  x64](#1-recomended-solution-robot-framework-python-3x--x64)
      - [1.1 Install Python 3.X x64](#11-install-python-3x-x64)
      - [1.2 Install/Setup Git Robot Framework](#12-install-setup-git-robot-framework)
    + [2 Legacy Solution for Robot Python 2.7](#2-legacy-solution-for-robot-python-27)
      - [2.1 Python x64](#21-python-x64)
      - [2.2 Visual Compiler for Python](#22-visual-compiler-for-python)
      - [2.3 Install/Setup Git Robot Framework](#23-install-setup-git-robot-framework)
      - [2.4 JAVA_JDK require ADMIN](#24-java-jdk-require-admin)
- [How to](#how-to)
  * [Open Powershell](#open-powershell)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


# Install Robotframework 
Install Robot Framework from scratch by Marcin Koperski

## With Admin Rights
Execute in powershell with admin rights (hint  Triple-click to select whole line), follow instructions
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-admin.ps1'))

```

## Without Admin Rights
### 1 Recomended Solution Robot Framework Python 3.X  x64
#### 1.1 Install Python 3.X x64
Execute in powershell (hint  Triple-click to select whole line), follow instructions
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/python-downlad-install.ps1'))
```



#### 1.2 Install/Setup Git Robot Framework
Execute in powershell (hint  Triple-click to select whole line), follow instructions
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.ps1'))

```

### 2 Legacy Solution for Robot Python 2.7
#### 2.1 Python x64
Install python select option "Install just for me"
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/python2-downlad-install.ps1'))
```
<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/Python%202.7.17%20Setup.png" width="300">


#### 2.2 Visual Compiler for Python
Install [Microsoft Visual C++ Compiler for Python 2.7](https://www.microsoft.com/en-us/download/details.aspx?id=44266)

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/VC27.png" width="300">

#### 2.3 Install/Setup Git Robot Framework
Execute in powershell (hint  Triple-click to select whole line), follow instructions

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.python.2.7.ps1'))
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
