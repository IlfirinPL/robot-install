#Get-ChildItem env:
Write $env:USERNAME
Write $env:JAVA_HOME
#Write $env:Path
py -0p
py --version
py -c "import struct; print(struct.calcsize('P')*8)"
py -m robot --version
Write-Host Git Chocolaty
choco --version
if (-Not (Get-Command "git" -ErrorAction SilentlyContinue)) {
    Write-Host Git Version
    git --version
}
if (Get-Command "npm" -ErrorAction SilentlyContinue) {
    Write-Host npm Version
    npm --version
}
