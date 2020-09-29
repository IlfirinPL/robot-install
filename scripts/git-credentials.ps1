
$proxyHostTemp = ""


if (-not ( Test-Path $env:USERPROFILE/.gitconfig)) {
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

    $SEL = Select-String -Path $env:USERPROFILE/.gitconfig -Pattern "proxy" 2> $null
    if ($null -ne $SEL) {
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


    $SEL = Select-String -Path $env:USERPROFILE/.gitconfig -Pattern "email"  2> $null
    if ($null -ne $SEL) {
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



if (-not ( Test-Path $env:USERPROFILE/.gitconfig)) {
    git config --global http.proxy ${login}:${password}@$proxyHostTemp
    git config --global http.sslVerify false 
    git config --global user.email "${email}" 
}
else {
    $SEL = Select-String -Path $env:USERPROFILE/.gitconfig -Pattern "proxy"
    if ($null -ne $SEL) {
    }
    else {

        git config --global http.proxy ${login}:${password}@$proxyHostTemp
        git config --global http.sslVerify false 
    }


    $SEL = Select-String -Path $env:USERPROFILE/.gitconfig -Pattern "email"
    if ($null -ne $SEL) {
    }
    else {
 
        git config --global user.email "${email}" 
    }
}

