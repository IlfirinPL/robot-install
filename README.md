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


