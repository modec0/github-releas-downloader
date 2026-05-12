# PowerShell script
$output = "v2rayN-windows-64.zip"
Get-ChildItem "chunks/part_*" | Sort-Object Name | ForEach-Object {
    Get-Content $_.FullName -AsByteStream -Raw | Add-Content $output -AsByteStream
}
Write-Host "File reassembled: $output"
