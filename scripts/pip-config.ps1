
$SEL = Select-String -Path $env:APPDATA/pip/pip.ini -Pattern "https://artifactory.inspol.biz/api/pypi/pypi/simple"
if ($SEL -ne $null) {
    Write-Output "####### Setup PIP ####### ***SKIP***"
}
else {
    Write-Output "####### Setup PIP #######"
    New-Item -itemtype directory $env:APPDATA/pip -Force > $null
    New-Item -Path $env:APPDATA/pip -Name "pip.ini" -ItemType "file" -Force -Value "[global]`nindex-url = https://artifactory.inspol.biz/api/pypi/pypi/simple`n`nfind-links = https://artifactory.inspol.biz/api/pypi/pypi/simple`n`ntrusted-host = artifactory.inspol.biz`n               pypi.python.org`n               pypi.org`n               files.pythonhosted.org`n`n[install]`nfind-links = https://artifactory.inspol.biz/api/pypi/pypi/simple" > $null
}
