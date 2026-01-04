# CLI Tools Inventory - WSL/Zsh with Homebrew

This document tracks CLI tools to be installed in WSL Ubuntu with zsh shell, using Homebrew as the primary package manager.

## Environment

- **WSL Ubuntu** - Linux environment
- **zsh** - Z shell (default shell)
- **oh-my-zsh** - zsh framework
- **Homebrew** - Primary package manager for CLI tools

## How to Check Your Tools

Run the following commands in WSL to inventory your CLI tools:

```bash
# Check current shell
echo $SHELL

# Check common tools
for tool in git gh docker aws node npm python3 terraform kubectl helm curl wget jq tree htop tmux vim nano; do
    command -v $tool >/dev/null 2>&1 && echo "✓ $tool: $(command -v $tool)" || echo "✗ $tool: not found"
done

# Check Homebrew packages
brew list

# Check AWS tools specifically
which sam && echo "✓ AWS SAM CLI: $(which sam)" || echo "✗ AWS SAM CLI: not found"
which session-manager-plugin && echo "✓ Session Manager Plugin: $(which session-manager-plugin)" || echo "✗ Session Manager Plugin: not found"
aws --version 2>/dev/null && echo "✓ AWS CLI: $(aws --version)" || echo "✗ AWS CLI: not found"
sam --version 2>/dev/null && echo "✓ AWS SAM: $(sam --version)" || echo "✗ AWS SAM: not found"
```

## CLI Tools to Install (WSL/Zsh)

Mark which tools you want to install. Installation will primarily use Homebrew where available.

### Development Tools

- [ ] **Git** - Version control
  - Installation: `brew install git` or `sudo apt install git -y`
  - Notes: Usually pre-installed with WSL Ubuntu

- [ ] **GitHub CLI (gh)** - GitHub command line
  - Installation: `brew install gh`
  - Notes: Install via Homebrew

- [ ] **Docker CLI** - Container platform CLI
  - Installation: Docker Desktop installs CLI automatically in WSL
  - Notes: Requires Docker Desktop on Windows

- [ ] **Newman** - Postman CLI collection runner
  - Installation: `npm install -g newman` or `brew install newman`
  - Notes: Run Postman collections from command line. Postman GUI app should be installed separately (see SOFTWARE_LIST.md)

### AWS Tools

- [ ] **AWS CLI v2** - AWS command line
  - Installation: Direct download (see DEV_ENV_SETUP.md section 3.4.7)
  - Notes: Not available via Homebrew, install via official installer

- [ ] **AWS SAM CLI** - Serverless Application Model
  - Installation: Direct download (see DEV_ENV_SETUP.md section 3.4.8)
  - Notes: Not available via Homebrew, install via official installer

- [ ] **AWS Session Manager Plugin** - SSM session management
  - Installation: Direct download (see DEV_ENV_SETUP.md section 3.4.9)
  - Notes: Install via .deb package

### Node.js Tools

- [ ] **Node.js** - JavaScript runtime
  - Installation: `brew install node` or via NodeSource repository (see DEV_ENV_SETUP.md)
  - Notes: Includes npm

- [ ] **npm** - Node package manager
  - Installation: Comes with Node.js
  - Notes: No separate installation needed

- [ ] **pnpm** - Fast, disk space efficient package manager
  - Installation: `brew install pnpm` or `npm install -g pnpm`
  - Notes: Alternative to npm/yarn, faster and more efficient

### Python Tools

- [ ] **Python 3** - Python interpreter
  - Installation: `brew install python@3.12` or `sudo apt install python3 python3-pip -y`
  - Notes: Usually pre-installed with WSL Ubuntu

- [ ] **pip** - Python package manager
  - Installation: `sudo apt install python3-pip -y` or comes with Python
  - Notes: Install pip3 for Python 3

### Container & Orchestration

- [ ] **Terraform** - Infrastructure as code
  - Installation: `brew install terraform`
  - Notes: Install via Homebrew

### Utilities

- [ ] **curl** - HTTP client
  - Installation: `brew install curl` or `sudo apt install curl -y`
  - Notes: Usually pre-installed

- [ ] **wget** - File downloader
  - Installation: `brew install wget` or `sudo apt install wget -y`
  - Notes: Usually pre-installed

- [ ] **jq** - JSON processor
  - Installation: `brew install jq` or `sudo apt install jq -y`
  - Notes: Essential for JSON processing

- [ ] **tree** - Directory tree viewer
  - Installation: `brew install tree` or `sudo apt install tree -y`
  - Notes: Useful for directory visualization

- [ ] **htop** - Process monitor
  - Installation: `brew install htop` or `sudo apt install htop -y`
  - Notes: Better than top for process monitoring

- [ ] **tmux** - Terminal multiplexer
  - Installation: `brew install tmux` or `sudo apt install tmux -y`
  - Notes: Optional but useful for terminal sessions

- [ ] **vim** - Text editor
  - Installation: `brew install vim` or `sudo apt install vim -y`
  - Notes: Usually pre-installed

- [ ] **nano** - Text editor
  - Installation: `sudo apt install nano -y`
  - Notes: Usually pre-installed, simpler than vim

- [ ] **fzf** - Fuzzy finder
  - Installation: `brew install fzf`
  - Notes: Powerful fuzzy finder for command line, integrates with zsh

- [ ] **ripgrep (rg)** - Fast text search tool
  - Installation: `brew install ripgrep`
  - Notes: Much faster than grep, recursive search by default

- [ ] **fd** - Simple, fast alternative to find
  - Installation: `brew install fd`
  - Notes: Faster and easier to use than traditional find command

- [ ] **zoxide** - Smarter cd command
  - Installation: `brew install zoxide`
  - Notes: Learn your habits and jump to frequently used directories

- [ ] **Dropbox CLI** - Dropbox command line interface
  - Installation: `brew install dropbox` or download from Dropbox
  - Notes: Command line access to Dropbox (if available via Homebrew)

- [ ] **Doppler** - Secrets manager CLI
  - Installation: `brew install doppler` or see <https://docs.doppler.com/docs/install-cli>
  - Notes: Manage secrets and configuration from command line

### Package Managers

- [ ] **Homebrew** - Linux package manager
  - Installation: See DEV_ENV_SETUP.md section 3.4.3
  - Path: `/home/linuxbrew/.linuxbrew/bin/brew`
  - Notes: Primary package manager for CLI tools

### Shell & Environment

- [ ] **zsh** - Z shell
  - Installation: `sudo apt install zsh -y`
  - Notes: See DEV_ENV_SETUP.md section 3.4.1

- [ ] **oh-my-zsh** - zsh framework
  - Installation: See DEV_ENV_SETUP.md section 3.4.2
  - Notes: Install via official script

- [ ] **build-essential** - Compilation tools
  - Installation: `sudo apt install build-essential -y`
  - Notes: Required for compiling software from source

### Additional Useful CLI Tools

- [ ] **bat** - Cat clone with syntax highlighting
  - Installation: `brew install bat`
  - Notes: Better alternative to cat, shows syntax highlighting and line numbers

- [ ] **eza** - Modern replacement for ls (actively maintained)
  - Installation: `brew install eza`
  - Notes: Fork of exa, actively maintained with improvements

- [ ] **dust** - More intuitive version of du
  - Installation: `brew install dust`
  - Notes: Visual disk usage analyzer, easier to read than du

- [ ] **procs** - Modern replacement for ps
  - Installation: `brew install procs`
  - Notes: Better process viewer than ps, with colors and more info

- [ ] **delta** - Syntax-highlighting pager for git
  - Installation: `brew install git-delta`
  - Notes: Better git diff viewer with syntax highlighting

- [ ] **tldr** - Simplified man pages
  - Installation: `brew install tldr`
  - Notes: Community-driven man pages with practical examples

- [ ] **chezmoi** - Manage dotfiles across machines
  - Installation: `brew install chezmoi`
  - Notes: Useful for managing .zshrc, .gitconfig, etc. across systems

- [ ] **direnv** - Load/unload environment variables
  - Installation: `brew install direnv`
  - Notes: Automatically load .env files when entering directories

- [ ] **ghq** - Remote repository manager
  - Installation: `brew install ghq`
  - Notes: Organize remote repository clones, works great with fzf

- [ ] **yq** - YAML processor (like jq for YAML)
  - Installation: `brew install yq`
  - Notes: Parse and manipulate YAML files from command line

## Installation Strategy

### Primary Method: Homebrew

- Use Homebrew for most CLI tools: `brew install <tool>`
- Homebrew provides latest versions and easy updates
- Examples: `gh`, `terraform`, `jq`, `tree`, `htop`, `tmux`, `fzf`, `ripgrep`, `fd`, `zoxide`, `pnpm`, `doppler`

### Secondary Method: apt (Ubuntu package manager)

- Use for system tools and utilities: `sudo apt install <tool> -y`
- Examples: `git`, `curl`, `wget`, `vim`, `nano`, `build-essential`, `python3`, `python3-pip`

### Direct Installation

- Use for tools not in Homebrew or apt
- Examples: AWS CLI v2, AWS SAM CLI, AWS Session Manager Plugin
- See DEV_ENV_SETUP.md for specific installation instructions

## Notes

- All tools will be installed in WSL Ubuntu environment
- zsh will be the default shell
- Homebrew is the primary package manager for development tools
- System utilities can use apt for faster installation
- AWS tools require direct installation (not available via Homebrew)

## Next Steps

1. Review this list and mark which tools you want to install
2. Installation instructions are in DEV_ENV_SETUP.md
3. After fresh install, follow DEV_ENV_SETUP.md step by step
