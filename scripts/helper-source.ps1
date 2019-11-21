function sourceRemote ($url) { Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest -Uri $url -OutFile $env:tmp/tmp.ps1 ;   & "$env:tmp/tmp.ps1" ; }
function copyRemote ($url,$destPath) { Invoke-WebRequest -Uri $url -OutFile $destPath  }

