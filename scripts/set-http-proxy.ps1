$defaultValue = $env:USERNAME
$proxy_host =
$prompt = Read-Host "Press enter to accept to default login [$($defaultValue)]"
$login = ($defaultValue, $prompt)[[bool]$prompt]
$password = Read-Host "Enter password for CK $login" -AsSecureString
$password = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)
$password = [Runtime.InteropServices.Marshal]::PtrToStringAuto($password)
$env:http_proxy= "http://${login}:${password}@$proxy_host:8080"
$env:https_proxy= $env:http_proxy


