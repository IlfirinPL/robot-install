function sourceRemote ($url) { 
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    Invoke-WebRequest -Uri $url -OutFile $env:tmp/tmp.ps1 ; 
    & "$env:tmp/tmp.ps1" ; 
}
function copyRemote ($url, $destPath) { 
    Invoke-WebRequest -Uri $url -OutFile $destPath 
}

function timerStart () {
    $env:StartDate = (GET-DATE)
}

function timerStop ($msg) {
    Write-Output "$msg $(NEW-TIMESPAN -Start $env:StartDate -End (GET-DATE))"
}
