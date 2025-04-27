$total = 100  # Total progress
$barLength = 50  # Progress bar length

for ($progress = 0; $progress -le $total; $progress++) {
    # Calculate the filled portion of the progress bar
    $filledLength = [math]::Floor(($progress / $total) * $barLength)
    $bar = ('=' * $filledLength) + ('-' * ($barLength - $filledLength))
    
    # Update the progress bar dynamically
    Write-Host -NoNewline ("`r[{0}] {1}%" -f $bar, $progress)
    Start-Sleep -Milliseconds 50
}