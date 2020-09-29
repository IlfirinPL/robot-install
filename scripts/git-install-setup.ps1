Write-Output "####### Setup GIT #######"
if (-Not (Get-Command "git" -ErrorAction SilentlyContinue)) {
    choco install git -y
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
  
} 
git --version