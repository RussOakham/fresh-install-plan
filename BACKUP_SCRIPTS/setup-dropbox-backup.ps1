# Setup Dropbox Backup Directory Structure
# This script creates the backup directory structure in Dropbox

$dropboxPath = "$env:USERPROFILE\Dropbox"
$backupPath = "$dropboxPath\PC-Backup-2026"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Dropbox Backup Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Dropbox is installed
if (-not (Test-Path $dropboxPath)) {
    Write-Host "ERROR: Dropbox folder not found at: $dropboxPath" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please:" -ForegroundColor Yellow
    Write-Host "1. Install Dropbox Desktop from https://www.dropbox.com/download" -ForegroundColor Yellow
    Write-Host "2. Sign in to your Dropbox account" -ForegroundColor Yellow
    Write-Host "3. Wait for Dropbox to sync" -ForegroundColor Yellow
    Write-Host "4. Run this script again" -ForegroundColor Yellow
    exit 1
}

Write-Host "[OK] Dropbox folder found: $dropboxPath" -ForegroundColor Green
Write-Host ""

# Create backup directory structure
Write-Host "Creating backup directory structure..." -ForegroundColor Yellow

$directories = @(
    "$backupPath",
    "$backupPath\ssh-keys",
    "$backupPath\ssh-keys-wsl",
    "$backupPath\gpg-keys",
    "$backupPath\documents",
    "$backupPath\projects",
    "$backupPath\configs",
    "$backupPath\configs\application-settings",
    "$backupPath\software-list"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
        Write-Host "  [OK] Created: $dir" -ForegroundColor Green
    } else {
        Write-Host "  - Already exists: $dir" -ForegroundColor Gray
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Backup Directory Structure Created!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan
Write-Host ""
Write-Host "Directory structure:" -ForegroundColor Yellow
Write-Host "  PC-Backup-2026/" -ForegroundColor White
Write-Host "    +-- ssh-keys/          (Windows SSH keys)" -ForegroundColor Gray
Write-Host "    +-- ssh-keys-wsl/      (WSL SSH keys)" -ForegroundColor Gray
Write-Host "    +-- gpg-keys/          (GPG keys and config)" -ForegroundColor Gray
Write-Host "    +-- documents/         (Important documents)" -ForegroundColor Gray
Write-Host "    +-- projects/          (Development projects)" -ForegroundColor Gray
Write-Host "    +-- configs/           (Configuration files)" -ForegroundColor Gray
Write-Host "    |   +-- application-settings/" -ForegroundColor Gray
Write-Host "    +-- software-list/    (Software inventory)" -ForegroundColor Gray
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Verify Dropbox is syncing properly" -ForegroundColor White
Write-Host "2. Run backup scripts to populate these directories" -ForegroundColor White
Write-Host "3. Verify files are syncing to Dropbox cloud" -ForegroundColor White
Write-Host ""

