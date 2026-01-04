# Backup Configurations Script
# This script backs up various configurations to Dropbox

$backupPath = "$env:USERPROFILE\Dropbox\PC-Backup-2024\configs"

Write-Host "Starting configurations backup..." -ForegroundColor Green

# Create backup directory
New-Item -ItemType Directory -Force -Path $backupPath | Out-Null

# Export Git configurations
Write-Host "Exporting Git configurations..." -ForegroundColor Yellow
if (Get-Command git -ErrorAction SilentlyContinue) {
    try {
        git config --list --show-origin > "$backupPath\git-config.txt"
        Write-Host "Git configurations exported!" -ForegroundColor Green
    } catch {
        Write-Host "Error exporting Git configurations: $_" -ForegroundColor Red
    }
} else {
    Write-Host "Git not found, skipping Git configuration export." -ForegroundColor Yellow
}

# Export environment variables
Write-Host "Exporting environment variables..." -ForegroundColor Yellow
try {
    Get-ChildItem Env: | Out-File "$backupPath\environment-variables.txt"
    Write-Host "Environment variables exported!" -ForegroundColor Green
} catch {
    Write-Host "Error exporting environment variables: $_" -ForegroundColor Red
}

# Export PATH variable separately for easier reading
Write-Host "Exporting PATH variable..." -ForegroundColor Yellow
try {
    $env:PATH -split ';' | Out-File "$backupPath\path-variable.txt"
    Write-Host "PATH variable exported!" -ForegroundColor Green
} catch {
    Write-Host "Error exporting PATH variable: $_" -ForegroundColor Red
}

# Backup PowerShell profile if it exists
if (Test-Path $PROFILE) {
    Write-Host "Backing up PowerShell profile..." -ForegroundColor Yellow
    try {
        Copy-Item -Path $PROFILE -Destination "$backupPath\powershell-profile.ps1" -Force
        Write-Host "PowerShell profile backed up!" -ForegroundColor Green
    } catch {
        Write-Host "Error backing up PowerShell profile: $_" -ForegroundColor Red
    }
}

Write-Host "Configurations backup complete!" -ForegroundColor Green
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan

