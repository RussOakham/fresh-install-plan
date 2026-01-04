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

#### 3.4.6 Install Essential CLI Tools

Install common development tools in WSL:

```bash
# Update package list
sudo apt update

# Install essential build tools and utilities
sudo apt install -y \
  build-essential \
  curl \
  wget \
  jq \
  tree \
  htop \
  vim \
  nano \
  git \
  unzip \
  zip

# Install Node.js (using NodeSource repository for latest LTS)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Verify installations
node --version
npm --version
git --version
```

#### 3.4.7 Install AWS CLI v2 (WSL)

```bash
# Download AWS CLI v2 installer
cd /tmp
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Verify installation
aws --version

# Clean up
rm -rf aws awscliv2.zip
```

#### 3.4.8 Install AWS SAM CLI (WSL)

```bash
# Download and install AWS SAM CLI
cd /tmp
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install

# Verify installation
sam --version

# Clean up
rm -rf sam-installation aws-sam-cli-linux-x86_64.zip
```

#### 3.4.9 Install AWS Session Manager Plugin (WSL)

```bash
# Download Session Manager Plugin
cd /tmp
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"

# Install
sudo dpkg -i session-manager-plugin.deb

# Verify installation
session-manager-plugin --version

# Clean up
rm session-manager-plugin.deb
```

#### 3.4.10 Install CLI Tools via Homebrew

Install development and utility tools using Homebrew:

```bash
# Development Tools
brew install gh                    # GitHub CLI
brew install terraform             # Infrastructure as code
brew install newman                # Postman CLI collection runner

# Node.js Tools
brew install pnpm                  # Fast Node.js package manager

# Utility Tools
brew install fzf                   # Fuzzy finder
brew install ripgrep               # Fast text search (rg)
brew install fd                    # Fast find alternative
brew install zoxide                # Smarter cd command
brew install bat                   # Cat with syntax highlighting
brew install eza                   # Modern ls replacement
brew install dust                  # Better du (disk usage)
brew install procs                 # Modern ps replacement
brew install delta                 # Better git diff viewer
brew install tldr                  # Simplified man pages
brew install chezmoi               # Dotfiles manager
brew install direnv                # Auto-load .env files
brew install ghq                   # Remote repository manager
brew install yq                    # YAML processor (like jq)
brew install doppler               # Secrets manager CLI

# Dropbox CLI (if available via Homebrew)
# Note: May need to install via other method if not in Homebrew
brew install dropbox || echo "Dropbox CLI not available via Homebrew, install manually if needed"
```

#### 3.4.11 Configure fzf and zoxide

Set up fzf and zoxide for better command line experience:

```bash
# Configure fzf (fuzzy finder)
$(brew --prefix)/opt/fzf/install

# Configure zoxide in .zshrc
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc

# Reload shell configuration
source ~/.zshrc
```

#### 3.4.12 Install Additional Tools (if needed)

```bash
# Install Docker CLI (if using Docker Desktop, CLI should be available)
# Docker Desktop installs Docker CLI automatically in WSL

# Install kubectl (Kubernetes CLI) - if needed
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# rm kubectl

# Install helm (Kubernetes package manager) - if needed
# curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

#### 3.4.13 Restore Git Repository from Backup

After Windows installation, restore the plan repository:

  ```bash
  # Clone from remote if you pushed to GitHub/GitLab
  git clone https://github.com/YOUR_USERNAME/fresh-install-plan.git
  cd fresh-install-plan

  # Or restore from Dropbox backup if stored locally
  # Navigate to Dropbox/PC-Backup-2026 and copy repository folder
  ```

## Verification

### Verify Development Environment

- [ ] WSL is working: `wsl --list --verbose`
- [ ] zsh is default shell: `echo $SHELL`
- [ ] oh-my-zsh is installed: `ls ~/.oh-my-zsh`
- [ ] Homebrew is working: `brew --version`
- [ ] Git is configured: `git config --list`
- [ ] AWS CLI is installed: `aws --version`
- [ ] AWS SAM CLI is installed: `sam --version`
- [ ] Session Manager Plugin is installed: `session-manager-plugin --version`
- [ ] Node.js is installed: `node --version`
- [ ] npm is installed: `npm --version`
- [ ] Essential utilities are installed: `curl --version`, `wget --version`, `jq --version`
- [ ] Homebrew CLI tools installed: `gh --version`, `terraform --version`, `fzf --version`, `rg --version`, `fd --version`, `zoxide --version`
- [ ] Node.js tools installed: `pnpm --version`
- [ ] Additional utilities: `bat --version`, `eza --version`, `yq --version`, `doppler --version`
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
