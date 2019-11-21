
$proxyHostTemp = "spplapp10200:8080"


if (-not ( Test-Path $env:HOMEDRIVE/.gitconfig)) {
    Write-Output "####### Setup Git PROXY #######"
    $defaultValue = $env:USERNAME
    Write-Output "####### Get Credentials for Git PROXY #######"
    $prompt = Read-Host "Press enter to accept to default login [$($defaultValue)]"
    $login = ($defaultValue, $prompt)[[bool]$prompt]
    $password = Read-Host "Enter password for CK $login" -AsSecureString
    $password = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)
    $password = [Runtime.InteropServices.Marshal]::PtrToStringAuto($password)
    $email = Read-Host "Provided Company Email"
    New-Item -Path $env:APPDATA -Name "email.ini" -ItemType "file" -Force -Value "$email" > $null
}
else {

    $SEL = Select-String -Path $env:HOMEDRIVE/.gitconfig -Pattern "proxy" 2> $null
    if ($SEL -ne $null) {
        Write-Output "####### Setup Git PROXY ####### ***SKIP***"
    }
    else {
        Write-Output "####### Setup Git PROXY #######"
        $defaultValue = $env:USERNAME
        Write-Output "####### Get Credentials for Git PROXY #######"
        $prompt = Read-Host "Press enter to accept to default login [$($defaultValue)]"
        $login = ($defaultValue, $prompt)[[bool]$prompt]
        $password = Read-Host "Enter password for CK $login" -AsSecureString
        $password = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)
        $password = [Runtime.InteropServices.Marshal]::PtrToStringAuto($password)

    }


    $SEL = Select-String -Path $env:HOMEDRIVE/.gitconfig -Pattern "email"  2> $null
    if ($SEL -ne $null) {
        Write-Output "####### Setup Git EMAIL ####### ***SKIP***"
    }
    else {
        Write-Output "####### Setup Git EMAIL #######"
        if (Test-Path $env:APPDATA/email.ini) {
            $defaultValue = Get-Content -Path $env:APPDATA/email.ini
            $prompt = Read-Host "Press enter to accept default email adress [$($defaultValue)]"
            $email = ($defaultValue, $prompt)[[bool]$prompt]
            New-Item -Path $env:APPDATA -Name "email.ini" -ItemType "file" -Force -Value "$email" > $null
        }
        else {
            $email = Read-Host "Provided Company Email"
            New-Item -Path $env:APPDATA -Name "email.ini" -ItemType "file" -Force -Value "$email" > $null
        }
    
    }


}


Write-Output "####### Setup GIT #######"
if (-Not (Get-Command "git" -ErrorAction SilentlyContinue)) {
    choco install git -y
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
  
} 
git --version

if (-not ( Test-Path $env:HOMEDRIVE/.gitconfig)) {
    git config --global http.proxy ${login}:${password}@$proxyHostTemp
    git config --global http.sslVerify false 
    git config --global user.email "${email}" 
}
else {
    $SEL = Select-String -Path $env:HOMEDRIVE/.gitconfig -Pattern "proxy"
    if ($SEL -ne $null) {
    }
    else {

        git config --global http.proxy ${login}:${password}@$proxyHostTemp
        git config --global http.sslVerify false 
    }


    $SEL = Select-String -Path $env:HOMEDRIVE/.gitconfig -Pattern "email"
    if ($SEL -ne $null) {
    }
    else {
 
        git config --global user.email "${email}" 
    }
}

