# Example: Creating a temporary file for testing
$tempFile = Join-Path $env:TEMP "TestFile.txt"
New-Item -Path $tempFile -ItemType File -Force
# Use $tempFile in your test
