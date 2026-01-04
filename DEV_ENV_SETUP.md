# Development Environment Setup Guide

## Phase 3: Development Environment Setup

### 3.1 Install Git (Windows)

```powershell
# Using winget (recommended)
winget install --id Git.Git -e --source winget

# Or download from: https://git-scm.com/download/win
```

- [x] Configure Git:

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

- [x] After restart, complete Ubuntu setup:
  - Create Linux username and password
  - Update packages: `sudo apt update && sudo apt upgrade -y`

### 3.3 Install Cursor

- [x] Download Cursor from <https://cursor.sh>
- [x] Install Cursor
- [x] Configure Cursor settings
- [x] **Install Remote - WSL extension** (required for proper WSL integration):
  1. Open Extensions (Ctrl+Shift+X)
  2. Search for "Remote - WSL" by Microsoft
  3. Install the extension
  4. This will automatically install the Cursor server component in WSL when you connect
- [ ] Install any other required Cursor extensions

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

#### 3.4.12 Install Docker Engine in WSL

Install Docker Engine directly in WSL (recommended for WSL development):

**Step 1: Update package index**
```bash
sudo apt-get update
```

**Step 2: Install prerequisites**
```bash
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

**Step 3: Add Docker's official GPG key**

**If you get an SSL certificate error**, try these solutions in order:

**Option 1: Fix CA certificates (recommended)**
```bash
sudo apt-get update
sudo apt-get install -y ca-certificates
sudo update-ca-certificates
```

Then retry:
```bash
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

**Option 2: Use --insecure flag (workaround)**
If Option 1 doesn't work:
```bash
sudo mkdir -p /etc/apt/keyrings
curl -fsSL --insecure https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

**Option 3: Download manually with wget**
If both fail:
```bash
sudo mkdir -p /etc/apt/keyrings
wget --no-check-certificate https://download.docker.com/linux/ubuntu/gpg -O /tmp/docker.gpg
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg /tmp/docker.gpg
rm /tmp/docker.gpg
```

**Step 4: Set up Docker repository**
```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

**Step 5: Update package index again**
```bash
sudo apt-get update
```

**Step 6: Install Docker Engine, CLI, and Containerd**
```bash
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

**Step 7: Add your user to the docker group** (so you can run docker without sudo)
```bash
sudo usermod -aG docker $USER
```

**Step 8: Restart WSL to apply group changes**

**Note:** If you want Docker to start automatically on boot, run:
```bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

**If you prefer to start Docker manually on demand** (recommended for WSL), skip the enable commands above. You'll start Docker manually when needed with:
```bash
sudo service docker start
```

**Step 9: Restart WSL**
In Windows PowerShell (run as Administrator or regular user):
```powershell
wsl --shutdown
wsl
```

**Step 10: Start Docker and verify installation**

After restarting WSL, start Docker manually (since we're not auto-starting):
```bash
sudo service docker start
```

Then test Docker:
```bash
docker --version
docker run hello-world
```

**Note:** Each time you start a new WSL session and want to use Docker, you'll need to run `sudo service docker start` first (unless you enabled auto-start in Step 8).

**Note:** If you prefer Docker Desktop for Windows instead, it will automatically install Docker CLI in WSL. However, Docker Engine directly in WSL is often simpler and doesn't require the Windows application.

#### 3.4.13 Install Additional Tools (if needed)

```bash
# Install kubectl (Kubernetes CLI) - if needed
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# rm kubectl

# Install helm (Kubernetes package manager) - if needed
# curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

#### 3.4.14 Restore Git Repository from Backup

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

- [x] WSL is working: `wsl --list --verbose` (verified - WSL Ubuntu running)
- [x] zsh is default shell: `echo $SHELL` (✓ /usr/bin/zsh)
- [x] oh-my-zsh is installed: `ls ~/.oh-my-zsh` (✓ installed)
- [x] Homebrew is working: `brew --version` (✓ Homebrew 5.0.8)
- [x] Git is configured: `git config --list` (✓ Russell, rjoakham@gmail.com)
- [x] AWS CLI is installed: `aws --version` (✓ aws-cli/2.32.28)
- [x] AWS SAM CLI is installed: `sam --version` (✓ SAM CLI 1.151.0)
- [x] Session Manager Plugin is installed: `session-manager-plugin --version` (✓ 1.2.764.0)
- [x] Node.js is installed: `node --version` (✓ v24.12.0)
- [x] npm is installed: `npm --version` (✓ 11.6.2)
- [x] Essential utilities are installed: `curl --version`, `wget --version`, `jq --version` (✓ all installed)
- [x] Homebrew CLI tools installed: `gh --version`, `terraform --version`, `fzf --version`, `rg --version`, `fd --version`, `zoxide --version` (✓ all installed and authenticated)
- [x] Node.js tools installed: `pnpm --version` (✓ 10.27.0)
- [x] Additional utilities: `bat --version`, `eza --version`, `yq --version`, `doppler --version` (✓ all installed)
- [x] Cursor can access WSL: Test opening a WSL folder in Cursor (✓ verified)

### Test Development Workflow

- [x] Create a test project in WSL (✓ fresh-install-plan repository)
- [x] Verify Git operations work (✓ verified - commits working)
- [x] Test Cursor features with WSL (✓ verified - Remote WSL working)

## Troubleshooting

### WSL Installation Issues
- If WSL installation fails, ensure virtualization is enabled in BIOS
- If Homebrew installation fails, check WSL permissions and network connectivity
- If zsh doesn't become default, verify path: `cat /etc/shells`

### Cursor Terminal Integration with WSL

If you see "Shell integration: No" in your terminal, Cursor cannot execute commands in WSL. Here's how to fix it:

#### Option 1: Enable Shell Integration in Settings

1. Open Cursor Settings (Ctrl+, or Cmd+,)
2. Search for "terminal.integrated.shellIntegration.enabled"
3. Ensure it's set to `true`
4. Search for "terminal.integrated.defaultProfile.windows"
5. Set it to `WSL` or `Ubuntu`
6. Restart Cursor

#### Option 2: Configure Terminal Profile Manually

Add this to your Cursor settings.json (File → Preferences → Settings → Open Settings JSON):

```json
{
  "terminal.integrated.defaultProfile.windows": "WSL",
  "terminal.integrated.profiles.windows": {
    "WSL": {
      "path": "C:\\WINDOWS\\System32\\wsl.exe",
      "args": ["-d", "Ubuntu"]
    }
  },
  "terminal.integrated.shellIntegration.enabled": true,
  "terminal.integrated.shellIntegration.decorationsEnabled": "both"
}
```

#### Option 3: Install/Reinstall WSL Extension

1. Open Extensions (Ctrl+Shift+X)
2. Search for "WSL" by Microsoft
3. Install or reinstall the "Remote - WSL" extension
4. Reload Cursor

#### Option 4: Use Remote WSL Connection (RECOMMENDED)

**This is the proper way to use Cursor with WSL.** Instead of opening files via `\\wsl.localhost\Ubuntu\`:

1. **Install Remote - WSL extension** (if not already installed):
   - Open Extensions (Ctrl+Shift+X)
   - Search for "Remote - WSL" by Microsoft
   - Install the extension

2. **Connect to WSL**:
   - Press F1 or Ctrl+Shift+P
   - Type "WSL: Connect to WSL" or "WSL: Connect to WSL using Distro..."
   - Select "Ubuntu"
   - This opens a new Cursor window connected to WSL
   - The Cursor server will automatically install in WSL (creates `~/.cursor-server`)

3. **Open your project folder**:
   - In the WSL-connected Cursor window, use File → Open Folder
   - Navigate to `/home/rjoak/repos/fresh-install-plan` (or your project path)
   - This ensures all Cursor features work properly with WSL

**Benefits of Remote - WSL:**
- Full shell integration works automatically
- All Cursor features work seamlessly with WSL
- File operations use native Linux paths
- Extensions can run in WSL context
- Better performance for WSL file operations

#### Verify Integration Works

After applying fixes, test by:
1. Opening a terminal in Cursor
2. Check if "Shell integration: Yes" appears in terminal info
3. Try running a simple command like `pwd` or `echo $SHELL`

### WSL Integration
- Cursor should automatically detect WSL. If not, use `\\wsl$\Ubuntu\` path or configure in Cursor settings.
- For best integration, use "Remote - WSL" extension and connect via "WSL: Connect to WSL" command.
