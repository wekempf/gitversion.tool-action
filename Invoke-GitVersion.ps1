$version = dotnet gitversion
Write-Host $version
$version = $version | ConvertFrom-Json
$version.PSObject.Properties | ForEach-Object {
    $name = $_.Name
    $value = $_.Value
    Write-Host "::set-output name=$($name.ToLower())::$value"
}
