function Show-ProgressBar {
  param (
    [int]$Progress, # Current progress (0 - Total)
    [int]$Total, # Maximum value for progress
    [int]$Step, # Current step number
    [int]$TotalSteps, # Total number of steps
    [int]$BarLength = 50 # Length of the progress bar (default: 50)
  )
  # Calculate the filled portion of the progress bar
  $filledLength = [math]::Floor(($Progress / $Total) * $BarLength)
  $bar = ('=' * $filledLength) + ('-' * ($BarLength - $filledLength))
  
  # Display the progress bar with step counter and percentage
  Write-Host -NoNewline ("`r[{0}] [{2}/{3}]" -f $bar, $Progress, $Step, $TotalSteps)
}

function Simulate-LongRunningFunction {
  # Simulates a function that takes a random amount of time to finish
  Start-Sleep -Milliseconds (Get-Random -Minimum 500 -Maximum 2000) # Adjust these for your needs
  return $true
}

$totalSteps = 10  # Total number of major steps
$currentStep = 0

# Loop through all major steps
while ($currentStep -lt $totalSteps) {
  # Simulate small progress increments until the function completes
  while (-not (Simulate-LongRunningFunction)) {
    $smallStepIncrement = 1 / $totalSteps / 20 * 100  # Fine-grained sub-steps
    $progress = [math]::Min($currentStep / $totalSteps * 100 + $smallStepIncrement, ($currentStep + 1) / $totalSteps * 100)
    Show-ProgressBar -Progress $progress -Total 100 -Step $currentStep -TotalSteps $totalSteps
    Start-Sleep -Milliseconds 50  # Wait for small increments
  }

  # Update major step once the function completes
  $currentStep++
  Show-ProgressBar -Progress ($currentStep / $totalSteps * 100) -Total 100 -Step $currentStep -TotalSteps $totalSteps
}
Write-Host "`nDone!"