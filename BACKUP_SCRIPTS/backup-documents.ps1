# Backup Documents and Projects Script
# This script backs up important documents and projects to Dropbox
# IMPORTANT: Review and customize the source paths before running!

$backupPath = "$env:USERPROFILE\Dropbox\PC-Backup-2026"

Write-Host "Starting documents and projects backup..." -ForegroundColor Green
Write-Host "WARNING: This script will copy files. Review source paths in the script before running!" -ForegroundColor Yellow

# Create backup directories
New-Item -ItemType Directory -Force -Path "$backupPath\documents" | Out-Null
New-Item -ItemType Directory -Force -Path "$backupPath\projects" | Out-Null

# Backup Documents folder (customize as needed)
$documentsSource = "$env:USERPROFILE\Documents"
if (Test-Path $documentsSource) {
    Write-Host "Backing up Documents folder..." -ForegroundColor Yellow
    try {
        # Exclude large or unnecessary folders - customize as needed
        $excludeFolders = @('node_modules', '.git', '__pycache__', '.venv', 'venv')
        Get-ChildItem -Path $documentsSource -Recurse | 
            Where-Object { $excludeFolders -notcontains $_.Name } |
            Copy-Item -Destination "$backupPath\documents\" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Documents folder backed up!" -ForegroundColor Green
    } catch {
        Write-Host "Error backing up Documents: $_" -ForegroundColor Red
    }
} else {
    Write-Host "Documents folder not found at: $documentsSource" -ForegroundColor Yellow
}

# Backup Projects folder (customize path as needed)
# Common locations: Documents\development, Documents\projects, or a separate drive
$projectsLocations = @(
    "$env:USERPROFILE\Documents\development",
    "$env:USERPROFILE\Documents\projects",
    "D:\projects",
    "C:\projects"
)

foreach ($projectsSource in $projectsLocations) {
    if (Test-Path $projectsSource) {
        Write-Host "Backing up projects from: $projectsSource" -ForegroundColor Yellow
        try {
            # Exclude common development folders that can be recreated
            $excludeFolders = @('node_modules', '.git', '__pycache__', '.venv', 'venv', 'dist', 'build', '.next', '.nuxt')
            Get-ChildItem -Path $projectsSource -Recurse | 
                Where-Object { $excludeFolders -notcontains $_.Name } |
                Copy-Item -Destination "$backupPath\projects\" -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Projects from $projectsSource backed up!" -ForegroundColor Green
        } catch {
            Write-Host "Error backing up projects from $projectsSource : $_" -ForegroundColor Red
        }
    }
}

Write-Host "Documents and projects backup complete!" -ForegroundColor Green
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan
Write-Host "NOTE: Review what was backed up and adjust source paths in this script if needed." -ForegroundColor Yellow

