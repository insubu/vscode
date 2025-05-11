# Define the filename
$filename = "example_tr.txt"

# Extract the string before "_tr"
$a = $filename -replace "_tr.*", ""

# Search for occurrences of $a in the file
$filepath = "C:\path\to\your\file.txt"
Select-String -Path $filepath -Pattern $a
