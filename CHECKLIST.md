# Master Checklist

Use this checklist to track progress through the entire fresh install process.

## Phase 1: Pre-Installation Preparation

### 1.1 Create Git Repository (Source of Truth)

- [x] Create repository locally
- [x] Optionally create remote repository (GitHub, GitLab, etc.) and push

### 1.2 Setup Cloud Backup Location (Dropbox)

- [x] Install Dropbox Desktop or CLI tool
- [x] Sign in to Dropbox account
- [x] Create backup directory structure: `PC-Backup-2026/`

### 1.3 Create Repository Structure

- [x] Create all repository files (README, guides, templates)
- [x] Create BACKUP_SCRIPTS directory

### 1.4 Backup Critical Data

- [x] Backup SSH keys (Windows and WSL)
- [x] Backup GPG keys
- [x] Backup important documents and projects (manually copied to Dropbox)
- [x] Export browser bookmarks and passwords (Skipped - using Google password manager, accessible after login)
- [x] Export Git configurations
- [x] Export environment variables
- [x] Export application settings/configurations (Skipped - starting fresh)
- [x] Document current installed software
- [x] Export Windows settings (Skipped - starting fresh)

### 1.5 Gather Installation Media & Keys

- [x] Download Windows 11/10 ISO from Microsoft
- [x] Create bootable USB drive
- [x] Verify Windows license key (saved to Dropbox: software-list\windows-product-key.txt)
- [x] Download drivers for hardware (network, graphics, chipset) - Network drivers saved to Dropbox
- [x] Save all software license keys to Dropbox backup - Windows key saved

### 1.6 Document Current System

- [x] List all installed software (create initial software list in repository)
- [ ] Document network configurations
- [ ] Note any custom system settings
- [x] Commit all documentation to Git repository

## Phase 2: Windows Fresh Install

### 2.1 Format and Install Windows

- [x] Boot from USB installation media
- [x] Delete all existing partitions on all drives
- [x] Format all drives
- [x] Install Windows to primary drive
- [x] Complete Windows setup (user account, basic settings)

### 2.2 Post-Install Windows Configuration

- [x] Install all Windows updates
- [x] Install hardware drivers (network, graphics, etc.)
- [x] Configure Windows Update settings
- [x] Set up Windows Security/Defender
- [x] Configure power settings
- [x] Set up user account preferences

### 2.3 Restore Dropbox and Repository

- [x] Install Dropbox Desktop
- [x] Sign in to Dropbox account
- [x] Verify backup folder `PC-Backup-2026` is synced
- [x] Restore Git repository
- [x] Verify repository contains all plan files
- [x] Restore SSH keys
- [ ] Restore GPG keys (GPG key files in backup were empty - can generate new if needed)

## Phase 3: Development Environment Setup

### 3.1 Install Git (Windows)

- [x] Install Git using winget
- [X] Configure Git (user name, email, default branch)

### 3.2 Install WSL

- [x] Install WSL using `wsl --install`
- [x] Restart computer
- [x] Complete Ubuntu setup
- [x] Update packages

### 3.3 Install Cursor

- [x] Download Cursor
- [x] Install Cursor
- [x] Configure Cursor settings
- [x] Install required Cursor extensions

### 3.4 WSL Development Tools Setup

- [x] Install zsh (v5.9)
- [x] Install oh-my-zsh (configured in ~/.zshrc)
- [x] Install Homebrew (Linux) (v5.0.8)
- [x] Configure zsh as default shell
- [x] Configure Git in WSL
- [x] Install essential CLI tools (build-essential, curl, wget, jq, tree, htop, vim, nano, git)
- [x] Install Node.js and npm (v24.12.0)
- [x] Install AWS CLI v2 (v2.32.28)
- [x] Install AWS SAM CLI (v1.151.0)
- [x] Install AWS Session Manager Plugin (v1.2.764.0)
- [x] Install CLI tools via Homebrew (gh, terraform, pnpm, fzf, ripgrep, fd, zoxide, bat, eza, dust, procs, delta, tldr, chezmoi, direnv, ghq, yq, doppler, newman)
- [x] Configure fzf and zoxide
- [x] Restore Git repository from backup

## Phase 4: Software List Template

- [ ] Review SOFTWARE_LIST.md template
- [ ] Fill in software categories with your applications
- [ ] Document installation methods and license keys

## Phase 5: Verification & Testing

### 5.1 Verify Development Environment

- [x] WSL is working
- [x] zsh is default shell
- [x] oh-my-zsh is installed
- [x] Homebrew is working
- [x] Git is configured
- [x] AWS CLI installed (v2.32.28)
- [x] AWS SAM CLI installed (v1.151.0)
- [x] AWS Session Manager Plugin installed (v1.2.764.0)
- [x] Node.js and npm are installed (v24.12.0)
- [x] Essential CLI tools are installed (curl, wget, jq, tree, htop, vim, nano, git, build-essential)
- [x] Homebrew CLI tools are installed (gh, terraform, fzf, ripgrep, fd, zoxide, bat, eza, dust, procs, delta, tldr, chezmoi, direnv, ghq, yq, doppler, newman)
- [x] Additional utilities are installed (bat, eza, yq, doppler, etc.)
- [x] Cursor can access WSL

### 5.2 Test Development Workflow

- [ ] Create a test project in WSL
- [X] Verify Git operations work
- [X] Test Cursor features with WSL

## Phase 6: Software Re-Installation

### 6.1 Browsers
- [X] Install Google Chrome

### 6.2 Development Tools
- [X] Install Git (Windows)
- [ ] Install GitHub CLI (if using Windows version)
- [x] Install Docker Desktop (or Docker Engine in WSL) - Docker Engine installed in WSL (v29.1.3)

### 6.3 Gaming Platforms & Launchers
- [ ] Install Steam
- [ ] Install Battle.net
- [ ] Install Ubisoft Connect
- [ ] Install Rockstar Games Launcher
- [ ] Install Battlestate Games Launcher
- [ ] Install Epic Games Launcher

### 6.4 Hardware Control & Monitoring
- [ ] Install ASUS Armoury Crate
- [ ] Install NZXT CAM
- [ ] Install Logitech G HUB
- [ ] Install SteelSeries GG
- [ ] Install CPUID HWMonitor
- [ ] Install Samsung Magician
- [ ] Install Western Digital Dashboard
- [ ] Install L-Connect 3
- [ ] Install AMD Ryzen Master

### 6.5 Graphics Drivers & Software
- [ ] Install NVIDIA Graphics Driver
- [ ] Install NVIDIA App
- [ ] Install AMD Chipset Software

### 6.6 System Utilities
- [ ] Install Dropbox

### 6.7 Printers & Scanners
- [ ] Install Canon TS5100 Series Drivers & Software (if printer still in use)

### 6.8 Other
- [ ] Install Zwift

### 6.9 Track Progress
- [ ] Go through SOFTWARE_LIST.md category by category
- [ ] Install each software using preferred method
- [ ] Update SOFTWARE_LIST.md with installation notes
- [ ] Mark completed items in checklist

## Completion

- [ ] All phases complete
- [ ] All software reinstalled
- [ ] Development environment fully functional
- [ ] All backups verified and accessible
