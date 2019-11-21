if (Get-Command "npm" -ErrorAction SilentlyContinue) {
    $SEL = Select-String -Path $env:USERPROFILE/.npmrc -Pattern "https://artifactory.inspol.biz/api/npm/npm-virtual/"
    if ($SEL -ne $null) {
        Write-Output "####### Setup npm ####### ***SKIP***"
    }
    else {
        Write-Output "####### Setup npm #######"
        npm config set registry https://artifactory.inspol.biz/api/npm/npm-virtual/ 
        npm config set always-auth=true 
        npm config set strict-ssl=false 
    }
}
