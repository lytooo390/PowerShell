# Example: Removing leading whitespace
$string = "   Hello, World!"
$trimmedString = $string.TrimStart()
Write-Output $trimmedString  # Output: "Hello, World!"

# Example: Removing specific characters
$string = "###Hello, World!"
$trimmedString = $string.TrimStart('#')
Write-Output $trimmedString  # Output: "Hello, World!"
