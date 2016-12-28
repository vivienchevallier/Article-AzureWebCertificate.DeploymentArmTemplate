Param([string] $pfxFilePath)

$pfxFileBytes = get-content $pfxFilePath -Encoding Byte

[System.Convert]::ToBase64String($pfxFileBytes) | Out-File 'PfxFileBytes-Base64.txt'