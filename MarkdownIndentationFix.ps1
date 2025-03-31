# This script checks and fixes unordered list indentation in Markdown files.

# Function to fix indentation
function Repair-MarkdownIndentation {
    param (
        [string]$FilePath,
        [int]$ExpectedIndentation = 4
    )

    # Read the file content
    $content = Get-Content -Path $FilePath

    # Process each line
    $fixedContent = $content | ForEach-Object {
        if ($_ -match '^\s*[\*\-\+]') {
            # Calculate current indentation
            $currentIndentation = ($_ -replace '[\*\-\+].*$', '').Length

            # Adjust indentation to match the expected level
            $adjustedIndentation = [math]::Floor($currentIndentation / 2) * $ExpectedIndentation
            $adjustedLine = (' ' * $adjustedIndentation) + ($_.TrimStart())
            return $adjustedLine
        } else {
            return $_
        }
    }

    # Write the fixed content back to the file
    Set-Content -Path $FilePath -Value $fixedContent
    Write-Host "Indentation fixed for file: $FilePath"
}

# Example usage
# Repair-MarkdownIndentation -FilePath "example.md"
