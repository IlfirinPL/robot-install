- [Install Robotframework](#install-robotframework)
  * [With Admin Rights](#with-admin-rights)
  * [Without Admin Rights](#without-admin-rights)
    + [1 Recomended Solution Robot Framework Python 3.X  x64](#1-recomended-solution-robot-framework-python-3x--x64)
      - [1.1 Install Python 3.X x64](#11-install-python-3x-x64)
      - [1.2 Install/Setup Git Robot Framework](#12-install-setup-git-robot-framework)
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

# How to 
## Open Powershell

open menu start and type **powershell** and click it

<img src="https://github.com/IlfirinPL/robot-install/raw/master/img/powershell.png" width="200">

or

use short cut win+x and click powershell
