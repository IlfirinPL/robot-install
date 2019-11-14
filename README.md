# robot-install
Install Robot Framework from scratch


## Install for user with admin right
open powershell with admin privileges ,paste code and execute

```powershell
 $f="admin-install.ps1"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/$f -OutFile $f ; . ./$f ; Remove-Item $f

```

## Install for user **without** admin right
#### Step 1 
Install Python 3.X for single user
#### Step 2 
open powershell ,paste code and execute

```powershell
 $f="non-admin-install.ps1"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/$f -OutFile $f ; . ./$f ; Remove-Item $f

```


## Legacy Solution for Robot Python 2.7
### Step 1
Install python select option "Install just for me"

![Python 27 Options](https://github.com/IlfirinPL/robot-install/raw/master/Python%202.7.17%20Setup.png)

Link to [Python 2.7.X](https://www.python.org/ftp/python/2.7.17/python-2.7.17.msi) 

### Step 2 
Install [Microsoft Visual C++ Compiler for Python 2.7](https://www.microsoft.com/en-us/download/details.aspx?id=44266)
### Step 3 open powershell, copy body of link and execute, later follow instructions
https://raw.githubusercontent.com/IlfirinPL/robot-install/master/install-no-admin.python.2.7.txt
