# Development Environment Setup Guide

## Phase 3: Development Environment Setup

### 3.1 Install Git (Windows)

```powershell
# Using winget (recommended)
winget install --id Git.Git -e --source winget

# Or download from: https://git-scm.com/download/win
```

- [ ] Configure Git:

  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  git config --global init.defaultBranch main
  ```

### 3.2 Install WSL (Windows Subsystem for Linux)

```powershell
# Run PowerShell as Administrator
wsl --install

# This installs WSL with Ubuntu by default
# Restart computer when prompted
```

- [ ] After restart, complete Ubuntu setup:
  - Create Linux username and password
  - Update packages: `sudo apt update && sudo apt upgrade -y`

### 3.3 Install Cursor

- [ ] Download Cursor from <https://cursor.sh>
- [ ] Install Cursor
- [ ] Configure Cursor settings
- [ ] Install any required Cursor extensions

### 3.4 WSL Development Tools Setup

#### 3.4.1 Install zsh

```bash
# In WSL terminal
sudo apt install zsh -y
```

#### 3.4.2 Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### 3.4.3 Install Homebrew (Linux)

```bash
# In WSL terminal
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to PATH (follow instructions from install script)
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

#### 3.4.4 Configure zsh as Default Shell

```bash
# Verify zsh is installed
which zsh

# Set as default shell
chsh -s $(which zsh)

# Restart terminal or run: exec zsh
```

#### 3.4.5 Configure Git in WSL

```bash
# In WSL terminal
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global init.defaultBranch main
```

#### 3.4.6 Restore Git Repository from Backup

After Windows installation, restore the plan repository:

```bash
# Clone from remote if you pushed to GitHub/GitLab
git clone <your-repo-url> fresh-install-plan
cd fresh-install-plan

# Or restore from Dropbox backup if stored locally
# Navigate to Dropbox backup location and copy repository
```

## Verification

### Verify Development Environment

- [ ] WSL is working: `wsl --list --verbose`
- [ ] zsh is default shell: `echo $SHELL`
- [ ] oh-my-zsh is installed: `ls ~/.oh-my-zsh`
- [ ] Homebrew is working: `brew --version`
- [ ] Git is configured: `git config --list`
- [ ] Cursor can access WSL: Test opening a WSL folder in Cursor

### Test Development Workflow

- [ ] Create a test project in WSL
- [ ] Verify Git operations work
- [ ] Test Cursor features with WSL

## Troubleshooting

- If WSL installation fails, ensure virtualization is enabled in BIOS
- If Homebrew installation fails, check WSL permissions and network connectivity
- If zsh doesn't become default, verify path: `cat /etc/shells`
- **WSL Integration**: Cursor should automatically detect WSL. If not, use `\\wsl$\Ubuntu\` path or configure in Cursor settings.
