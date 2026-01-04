# Master Checklist

Use this checklist to track progress through the entire fresh install process.

## Phase 1: Pre-Installation Preparation

### 1.1 Create Git Repository (Source of Truth)

- [ ] Create repository locally
- [ ] Optionally create remote repository (GitHub, GitLab, etc.) and push

### 1.2 Setup Cloud Backup Location (Dropbox)

- [ ] Install Dropbox Desktop or CLI tool
- [ ] Sign in to Dropbox account
- [ ] Create backup directory structure: `PC-Backup-2024/`

### 1.3 Create Repository Structure

- [ ] Create all repository files (README, guides, templates)
- [ ] Create BACKUP_SCRIPTS directory

### 1.4 Backup Critical Data

- [ ] Backup SSH keys (Windows and WSL)
- [ ] Backup GPG keys
- [ ] Backup important documents and projects
- [ ] Export browser bookmarks and passwords
- [ ] Export Git configurations
- [ ] Export environment variables
- [ ] Export application settings/configurations
- [ ] Document current installed software
- [ ] Export Windows settings

### 1.5 Gather Installation Media & Keys

- [ ] Download Windows 11/10 ISO from Microsoft
- [ ] Create bootable USB drive
- [ ] Verify Windows license key (if needed)
- [ ] Download drivers for hardware (network, graphics, chipset)
- [ ] Save all software license keys to Dropbox backup

### 1.6 Document Current System

- [ ] List all installed software (create initial software list in repository)
- [ ] Document network configurations
- [ ] Note any custom system settings
- [ ] Commit all documentation to Git repository

## Phase 2: Windows Fresh Install

### 2.1 Format and Install Windows

- [ ] Boot from USB installation media
- [ ] Delete all existing partitions on all drives
- [ ] Format all drives
- [ ] Install Windows to primary drive
- [ ] Complete Windows setup (user account, basic settings)

### 2.2 Post-Install Windows Configuration

- [ ] Install all Windows updates
- [ ] Install hardware drivers (network, graphics, etc.)
- [ ] Configure Windows Update settings
- [ ] Set up Windows Security/Defender
- [ ] Configure power settings
- [ ] Set up user account preferences

### 2.3 Restore Dropbox and Repository

- [ ] Install Dropbox Desktop
- [ ] Sign in to Dropbox account
- [ ] Verify backup folder `PC-Backup-2024` is synced
- [ ] Restore Git repository
- [ ] Verify repository contains all plan files
- [ ] Restore SSH keys
- [ ] Restore GPG keys

## Phase 3: Development Environment Setup

### 3.1 Install Git (Windows)

- [ ] Install Git using winget
- [ ] Configure Git (user name, email, default branch)

### 3.2 Install WSL

- [ ] Install WSL using `wsl --install`
- [ ] Restart computer
- [ ] Complete Ubuntu setup
- [ ] Update packages

### 3.3 Install Cursor

- [ ] Download Cursor
- [ ] Install Cursor
- [ ] Configure Cursor settings
- [ ] Install required Cursor extensions

### 3.4 WSL Development Tools Setup

- [ ] Install zsh
- [ ] Install oh-my-zsh
- [ ] Install Homebrew (Linux)
- [ ] Configure zsh as default shell
- [ ] Configure Git in WSL
- [ ] Restore Git repository from backup

## Phase 4: Software List Template

- [ ] Review SOFTWARE_LIST.md template
- [ ] Fill in software categories with your applications
- [ ] Document installation methods and license keys

## Phase 5: Verification & Testing

### 5.1 Verify Development Environment

- [ ] WSL is working
- [ ] zsh is default shell
- [ ] oh-my-zsh is installed
- [ ] Homebrew is working
- [ ] Git is configured
- [ ] Cursor can access WSL

### 5.2 Test Development Workflow

- [ ] Create a test project in WSL
- [ ] Verify Git operations work
- [ ] Test Cursor features with WSL

## Phase 6: Software Re-Installation

- [ ] Go through SOFTWARE_LIST.md category by category
- [ ] Install each software using preferred method
- [ ] Update template with installation notes
- [ ] Mark completed items in checklist

## Completion

- [ ] All phases complete
- [ ] All software reinstalled
- [ ] Development environment fully functional
- [ ] All backups verified and accessible
