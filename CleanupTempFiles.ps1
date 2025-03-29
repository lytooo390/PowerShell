# This script cleans up unnecessary files in the user's temporary directory.

# Get the path to the temporary directory
$tempDir = $env:TEMP

# Output the directory being cleaned
Write-Output "Cleaning up temporary files in: $tempDir"

# Get all files older than 7 days
$tempFiles = Get-ChildItem -Path $tempDir -Recurse -File | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-7) }

# Remove the files
foreach ($file in $tempFiles) {
    try {
        Remove-Item -Path $file.FullName -Force -ErrorAction Stop
        Write-Output "Deleted: $($file.FullName)"
    } catch {
        Write-Output "Failed to delete: $($file.FullName) - $($_.Exception.Message)"
    }
}

Write-Output "Temporary file cleanup completed."
