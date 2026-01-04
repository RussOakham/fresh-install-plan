# Master Backup Script
# This script runs all backup scripts in sequence

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Starting Complete Backup Process" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Run all backup scripts
Write-Host "1. Backing up SSH keys..." -ForegroundColor Yellow
& "$scriptPath\backup-ssh-keys.ps1"
Write-Host ""

Write-Host "2. Backing up GPG keys..." -ForegroundColor Yellow
& "$scriptPath\backup-gpg-keys.ps1"
Write-Host ""

Write-Host "3. Backing up configurations..." -ForegroundColor Yellow
& "$scriptPath\backup-configs.ps1"
Write-Host ""

Write-Host "4. Backing up documents and projects..." -ForegroundColor Yellow
& "$scriptPath\backup-documents.ps1"
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Backup Process Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Please verify all backups in Dropbox: PC-Backup-2026\" -ForegroundColor Yellow
Write-Host ""

