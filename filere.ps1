# Define file paths
$file = "t.sql"
$backup = "t.sql.bk"
$replacement = "C.txt"
$newFile = "t.sql"

# Backup the original file
Copy-Item $file $backup

# Read file content
$content = Get-Content $file

# Extract the required parts
$A = $content[0..11]  # First 12 lines
$B = $content[27..($content.Length-1)]  # From line 28 to end
$C = Get-Content $replacement  # Load replacement text

# Create new file with updated content
$A + $C + $B | Set-Content $newFile

Write-Host "File processed successfully!"

