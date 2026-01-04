# Script to list installed software for review
# This will create a text file with all installed applications

$outputFile = "installed-software-list.txt"

Write-Host "Gathering installed software..." -ForegroundColor Green

# Method 1: Using winget (if available)
Write-Host "`n=== Winget Installed Packages ===" -ForegroundColor Yellow
try {
    winget list --accept-source-agreements 2>&1 | Out-File -FilePath "winget-list.txt" -Encoding UTF8
    Write-Host "Winget list saved to winget-list.txt" -ForegroundColor Green
} catch {
    Write-Host "Winget not available or error: $_" -ForegroundColor Red
}

# Method 2: Using Windows Registry (more comprehensive)
Write-Host "`n=== Registry Installed Software ===" -ForegroundColor Yellow
$software = @()

# 64-bit programs
$registryPaths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

foreach ($path in $registryPaths) {
    $items = Get-ItemProperty $path -ErrorAction SilentlyContinue | Where-Object { $_.DisplayName }
    foreach ($item in $items) {
        if ($item.DisplayName) {
            $software += [PSCustomObject]@{
                Name = $item.DisplayName
                Publisher = $item.Publisher
                Version = $item.DisplayVersion
            }
        }
    }
}

# Remove duplicates and sort
$uniqueSoftware = $software | Sort-Object Name -Unique

# Output to file
$uniqueSoftware | Format-Table -AutoSize | Out-File -FilePath $outputFile -Encoding UTF8

Write-Host "`nFound $($uniqueSoftware.Count) installed applications" -ForegroundColor Green
Write-Host "List saved to: $outputFile" -ForegroundColor Green
Write-Host "`nFirst 30 applications:" -ForegroundColor Cyan
$uniqueSoftware | Select-Object -First 30 | Format-Table -AutoSize

