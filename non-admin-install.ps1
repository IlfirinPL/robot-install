$FileName = "system-info.ps1"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/$FileName -OutFile $FileName 
. ./$FileName
Remove-Item $FileName
