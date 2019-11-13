function sourceRemote ($filename){

Invoke-WebRequest -Uri https://raw.githubusercontent.com/IlfirinPL/robot-install/master/$FileName -OutFile $FileName   
Write-Host "XXX" $FileName
. ./$FileName 
Remove-Item $FileName  
}

sourceRemote "system-info.ps1"
