# sample.ps1

# Variables
$Name = "Karthik"
$CurrentDate = Get-Date

Write-Host "Hello, $Name!"
Write-Host "Current Date and Time: $CurrentDate"

# Display PowerShell version
Write-Host "`nPowerShell Version:"
$PSVersionTable.PSVersion

# List all running processes
Write-Host "`nTop 10 Running Processes:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 Name, Id, CPU

# Check if a folder exists
$Folder = "C:\Temp"

if (Test-Path $Folder) {
    Write-Host "`nFolder '$Folder' exists."
}
else {
    Write-Host "`nFolder '$Folder' does not exist. Creating it..."
    New-Item -ItemType Directory -Path $Folder | Out-Null
}

# Create a text file
$File = "$Folder\sample.txt"
"This file was created on $(Get-Date)" | Out-File $File

Write-Host "Created file: $File"

# Read the file
Write-Host "`nFile Contents:"
Get-Content $File

Write-Host "`nScript completed successfully."
