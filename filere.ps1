$filePath = "C:\path\to\your\file.txt"

# Read file content into an array
$lines = Get-Content $filePath

# Insert "xxxx" before line 3
$lines = $lines[0..1] + "xxxx" + $lines[2..($lines.Length - 1)]

# Write modified content back to the file
$lines | Set-Content $filePath
