# Windows Fresh Install Guide

## Phase 2: Windows Fresh Install

### 2.1 Format and Install Windows

1. Boot from USB installation media

2. During installation:
   - Select "Custom: Install Windows only"
   - Delete all existing partitions on all drives
   - Format all drives (this will erase everything)
   - Create new partition(s) as needed
   - Install Windows to primary drive

3. Complete Windows setup:
   - Create user account
   - Configure basic Windows settings
   - Skip optional features (we'll install what we need)

### 2.2 Post-Install Windows Configuration

- [ ] Install all Windows updates
- [ ] Install hardware drivers (network, graphics, etc.)
- [ ] Configure Windows Update settings
- [ ] Set up Windows Security/Defender
- [ ] Configure power settings
- [ ] Set up user account preferences

### 2.3 Restore Dropbox and Repository

- [ ] Install Dropbox Desktop from <https://www.dropbox.com/download>
- [ ] Sign in to Dropbox account
- [ ] Verify backup folder `PC-Backup-2024` is synced
- [ ] Restore Git repository:

  ```bash
  # Option 1: Clone from remote (if you pushed to GitHub/GitLab)
  git clone https://github.com/YOUR_USERNAME/fresh-install-plan.git
  cd fresh-install-plan
  
  # Option 2: Copy from Dropbox if stored locally
  # Navigate to Dropbox/PC-Backup-2024 and copy repository folder
  ```

- [ ] Verify repository contains all plan files
- [ ] Restore SSH keys (when ready):

  ```powershell
  # Create .ssh directory
  New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.ssh"
  # Copy from Dropbox backup
  Copy-Item -Path "$env:USERPROFILE\Dropbox\PC-Backup-2024\ssh-keys\*" -Destination "$env:USERPROFILE\.ssh\" -Recurse
  # Set correct permissions
  icacls "$env:USERPROFILE\.ssh" /inheritance:r
  icacls "$env:USERPROFILE\.ssh" /grant:r "$env:USERNAME:(OI)(CI)F"
  ```

- [ ] Restore GPG keys (when ready):

  ```powershell
  # Import GPG keys
  gpg --import "$env:USERPROFILE\Dropbox\PC-Backup-2024\gpg-keys\public-keys.asc"
  gpg --import "$env:USERPROFILE\Dropbox\PC-Backup-2024\gpg-keys\private-keys.asc"
  ```

## Important Notes

- **Data Loss Warning**: Formatting all drives will permanently delete all data. Ensure backups are complete and verified in Dropbox before proceeding.
- **Network Drivers**: Download network drivers before installation in case Windows doesn't detect your network adapter.
