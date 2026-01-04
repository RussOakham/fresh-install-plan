# Backup Documents and Projects Script
# This script backs up important documents and projects to Dropbox
# IMPORTANT: Review and customize the source paths before running!

$backupPath = "$env:USERPROFILE\Dropbox\PC-Backup-2026"

Write-Host "Starting documents and projects backup..." -ForegroundColor Green
Write-Host "WARNING: This script will copy files. Review source paths in the script before running!" -ForegroundColor Yellow

# Create backup directories
New-Item -ItemType Directory -Force -Path "$backupPath\documents" | Out-Null
New-Item -ItemType Directory -Force -Path "$backupPath\projects" | Out-Null

# Backup Documents folder (SKIPPED - manual backup preferred due to size)
# Documents folder is 4GB+ and should be backed up manually
# Uncomment below if you want to enable automatic backup
# $documentsSource = "$env:USERPROFILE\Documents"
# if (Test-Path $documentsSource) {
#     Write-Host "Backing up Documents folder..." -ForegroundColor Yellow
#     try {
#         # Exclude large or unnecessary folders - customize as needed
#         $excludeFolders = @('node_modules', '.git', '__pycache__', '.venv', 'venv')
#         Get-ChildItem -Path $documentsSource -Recurse | 
#             Where-Object { $excludeFolders -notcontains $_.Name } |
#             Copy-Item -Destination "$backupPath\documents\" -Recurse -Force -ErrorAction SilentlyContinue
#         Write-Host "Documents folder backed up!" -ForegroundColor Green
#     } catch {
#         Write-Host "Error backing up Documents: $_" -ForegroundColor Red
#     }
# } else {
#     Write-Host "Documents folder not found at: $documentsSource" -ForegroundColor Yellow
# }
Write-Host "Documents folder backup skipped (manual backup preferred)" -ForegroundColor Yellow
Write-Host "  Please manually copy important documents to: $backupPath\documents\" -ForegroundColor Gray

# Backup Projects folder (SKIPPED - source of truth is in GitHub repositories)
# Development projects should be in remote Git repositories, no need to backup locally
# Uncomment below if you have local-only projects that need backing up
# $projectsLocations = @(
#     "$env:USERPROFILE\Documents\development",
#     "$env:USERPROFILE\Documents\projects",
#     "D:\projects",
#     "C:\projects"
# )
# foreach ($projectsSource in $projectsLocations) {
#     if (Test-Path $projectsSource) {
#         Write-Host "Backing up projects from: $projectsSource" -ForegroundColor Yellow
#         try {
#             $excludeFolders = @('node_modules', '.git', '__pycache__', '.venv', 'venv', 'dist', 'build', '.next', '.nuxt')
#             Get-ChildItem -Path $projectsSource -Recurse | 
#                 Where-Object { $excludeFolders -notcontains $_.Name } |
#                 Copy-Item -Destination "$backupPath\projects\" -Recurse -Force -ErrorAction SilentlyContinue
#             Write-Host "Projects from $projectsSource backed up!" -ForegroundColor Green
#         } catch {
#             Write-Host "Error backing up projects from $projectsSource : $_" -ForegroundColor Red
#         }
#     }
# }
Write-Host "Projects folder backup skipped (source of truth is in GitHub repositories)" -ForegroundColor Yellow

Write-Host "Documents and projects backup complete!" -ForegroundColor Green
Write-Host "Backup location: $backupPath" -ForegroundColor Cyan
Write-Host "NOTE: Documents folder backup is skipped - please backup manually due to size (4GB+)" -ForegroundColor Yellow
Write-Host "NOTE: Projects folder backup is skipped - source of truth is in GitHub repositories" -ForegroundColor Yellow

