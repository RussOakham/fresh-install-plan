# Backup SSH Keys Script
# This script backs up SSH keys from both Windows and WSL to Dropbox

$backupPath = "$env:USERPROFILE\Dropbox\PC-Backup-2026\ssh-keys"
$backupPathWSL = "$env:USERPROFILE\Dropbox\PC-Backup-2026\ssh-keys-wsl"

Write-Host "Starting SSH keys backup..." -ForegroundColor Green

# Create backup directories
New-Item -ItemType Directory -Force -Path $backupPath | Out-Null
New-Item -ItemType Directory -Force -Path $backupPathWSL | Out-Null

# Backup Windows SSH keys
if (Test-Path "$env:USERPROFILE\.ssh") {
    Write-Host "Backing up Windows SSH keys..." -ForegroundColor Yellow
    Copy-Item -Path "$env:USERPROFILE\.ssh\*" -Destination $backupPath -Recurse -Force
    Write-Host "Windows SSH keys backed up successfully!" -ForegroundColor Green
} else {
    Write-Host "No Windows .ssh directory found." -ForegroundColor Yellow
}

# Backup WSL SSH keys if WSL is available
if (Get-Command wsl -ErrorAction SilentlyContinue) {
    Write-Host "Backing up WSL SSH keys..." -ForegroundColor Yellow
    try {
        wsl bash -c "if [ -d ~/.ssh ]; then cp -r ~/.ssh/* /mnt/c/Users/$env:USERNAME/Dropbox/PC-Backup-2026/ssh-keys-wsl/ 2>/dev/null; echo 'WSL SSH keys backed up'; else echo 'No WSL .ssh directory found'; fi"
        Write-Host "WSL SSH keys backup completed!" -ForegroundColor Green
    } catch {
        Write-Host "Error backing up WSL SSH keys: $_" -ForegroundColor Red
    }
} else {
    Write-Host "WSL not available, skipping WSL SSH keys backup." -ForegroundColor Yellow
}

Write-Host "SSH keys backup complete!" -ForegroundColor Green
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan

