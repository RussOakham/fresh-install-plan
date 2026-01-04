# Backup GPG Keys Script
# This script backs up GPG keys to Dropbox

$backupPath = "$env:USERPROFILE\Dropbox\PC-Backup-2026\gpg-keys"
$gnupgPath = "$env:APPDATA\gnupg"

Write-Host "Starting GPG keys backup..." -ForegroundColor Green

# Create backup directory
New-Item -ItemType Directory -Force -Path $backupPath | Out-Null

# Check if GPG is installed
if (-not (Get-Command gpg -ErrorAction SilentlyContinue)) {
    Write-Host "GPG not found. Please install GPG first." -ForegroundColor Red
    exit 1
}

# Export GPG public keys
Write-Host "Exporting GPG public keys..." -ForegroundColor Yellow
try {
    gpg --armor --export > "$backupPath\public-keys.asc"
    Write-Host "Public keys exported successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error exporting public keys: $_" -ForegroundColor Red
}

# Export GPG private keys (requires passphrase)
Write-Host "Exporting GPG private keys (you will be prompted for passphrase)..." -ForegroundColor Yellow
try {
    gpg --armor --export-secret-keys > "$backupPath\private-keys.asc"
    Write-Host "Private keys exported successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error exporting private keys: $_" -ForegroundColor Red
}

# Backup GPG trust database and configuration
if (Test-Path $gnupgPath) {
    Write-Host "Backing up GPG configuration and trust database..." -ForegroundColor Yellow
    $gnupgBackup = "$backupPath\gnupg"
    New-Item -ItemType Directory -Force -Path $gnupgBackup | Out-Null
    Copy-Item -Path "$gnupgPath\*" -Destination $gnupgBackup -Recurse -Force
    Write-Host "GPG configuration backed up!" -ForegroundColor Green
} else {
    Write-Host "No GPG configuration directory found." -ForegroundColor Yellow
}

Write-Host "GPG keys backup complete!" -ForegroundColor Green
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan
Write-Host "IMPORTANT: Keep your private keys secure and remember your GPG passphrase!" -ForegroundColor Yellow

