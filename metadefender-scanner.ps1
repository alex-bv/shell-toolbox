# Usage:
# metadefender-scan.ps1 %PATH %APIKEY, for example:
# metadefender-scan.ps1 C:\Path\To\File\To\Be\Scanned.ext 12345678990ABCDEF

$FileHash = Get-FileHash -Path $args[0] -Algorithm SHA256
$Hash = $FileHash.Hash
$uri = "https://api.metadefender.com/v4/hash/$Hash"

$headers = @{}
$headers.Add('apikey', $args[1])

$result = Invoke-WebRequest -Uri $uri -Headers $headers
Write-Output $result.content
