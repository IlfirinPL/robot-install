#Get-ChildItem env:

$hash = [ordered]@{}

$hash["USERNAME"] = $env:USERNAME
$hash["JAVA_HOME"] = $env:JAVA_HOME
$hash["Choco"] = choco --version
$python_version = py --version
$python_bits = py -c "import struct; print(struct.calcsize('P')*8)"
$hash["Python"] = "$python_version-$python_bits"
$hash["Robot"] = py -m robot --version

py -0p

if (-Not (Get-Command "git" -ErrorAction SilentlyContinue)) {
    $hash["GIT"] = git --version
}
if (Get-Command "npm" -ErrorAction SilentlyContinue) {
    $hash["NPM"] = npm --version
}

$hash.GetEnumerator() | sort -Property name