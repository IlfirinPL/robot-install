
$SEL = Select-String -Path $env:APPDATA/pip/pip.ini -Pattern "https://artifactory.inspol.biz/api/pypi/pypi/simple"
if ($SEL -ne $null) {
    Write-Output "####### Setup PIP $Env:PY_PYTHON ####### ***SKIP***"
}
else {
    Write-Output "####### Setup PIP $Env:PY_PYTHON #######"
    New-Item -itemtype directory $env:APPDATA/pip -Force > $null
    New-Item -Path $env:APPDATA/pip -Name "pip.ini" -ItemType "file" -Force -Value "[global]`nindex-url = https://artifactory.inspol.biz/api/pypi/pypi/simple`n`nfind-links = https://artifactory.inspol.biz/api/pypi/pypi/simple`n`ntrusted-host = artifactory.inspol.biz`n               pypi.python.org`n               pypi.org`n               files.pythonhosted.org`n`n[install]`nfind-links = https://artifactory.inspol.biz/api/pypi/pypi/simple" > $null
}

Write-Output "####### Update PIP $Env:PY_PYTHON before install RF #######"
if (Get-Command "py" -ErrorAction SilentlyContinue) { 
    py -m pip install -U pip wheel setuptools 

}
else {
    python -m pip install -U pip wheel setuptools
    
}
