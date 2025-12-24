# Script to copy sound files from temp_xylophone to assets/sounds
$sourceDir = Join-Path $PSScriptRoot "temp_xylophone\assets\sounds"
$destDir = Join-Path $PSScriptRoot "assets\sounds"

if (Test-Path $sourceDir) {
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    Copy-Item -Path "$sourceDir\*.wav" -Destination $destDir -Force
    Write-Host "Sound files copied successfully!"
    Get-ChildItem $destDir | Select-Object Name
} else {
    Write-Host "Source directory not found: $sourceDir"
}

