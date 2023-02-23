[![Docker Image CI](https://github.com/IlfirinPL/robot-install/actions/workflows/docker-image.yml/badge.svg)](https://github.com/IlfirinPL/robot-install/actions/workflows/docker-image.yml)

- [Install Robotframework Without Admin Rights](#install-robotframework-without-admin-rights)
  * [1 Recommended Solution Robot Framework Python 3.X  x64](#1-recommended-solution-robot-framework-python-3x--x64)
    + [1.1 Install Python 3.X x64](#11-install-python-3x-x64)
    + [1.2 Install/Setup Git Robot Framework](#12-install-setup-git-robot-framework)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>



# Install Robotframework Without Admin Rights
Install Robot Framework from scratch by Marcin Koperski

## 1 Recommended Solution Robot Framework Python 3.X  x64
### 1.1 Install Python 3.X x64

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/scripts/python-downlad-install.ps1'))
```

### 1.2 Install/Setup Git Robot Framework

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.ps1'))
```
