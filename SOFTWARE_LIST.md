# Software Re-Installation List

Use this template to track all software that needs to be reinstalled after the fresh Windows installation.

## Installation Methods Priority

1. **winget** (Windows Package Manager) - fastest, automated
2. **Direct download** - for software not in winget
3. **Microsoft Store** - for UWP apps
4. **Chocolatey** - if you prefer it over winget

## Software Categories

### Browsers

- [ ] **Google Chrome**
  - Installation: `winget install --id Google.Chrome -e --source winget`
  - License: N/A (Free)
  - Notes: Sync bookmarks and passwords from backup

### Development Tools

- [ ] **Git**
  - Installation: `winget install --id Git.Git -e --source winget`
  - License: N/A (Free)
  - Notes: Also covered in DEV_ENV_SETUP.md

- [ ] **GitHub CLI**
  - Installation: `winget install --id GitHub.cli -e --source winget`
  - License: N/A (Free)
  - Notes: Also covered in DEV_ENV_SETUP.md

- [ ] **Docker Desktop**
  - Installation: `winget install --id Docker.DockerDesktop -e --source winget`
  - License: N/A (Free)
  - Notes: Also covered in DEV_ENV_SETUP.md

- [ ] **AWS CLI v2** *(Install in WSL)*
  - Installation: Install in WSL/zsh after dev environment setup
  - License: N/A (Free)
  - Notes: See DEV_ENV_SETUP.md for WSL installation steps

- [ ] **AWS SAM CLI** *(Install in WSL)*
  - Installation: Install in WSL/zsh after dev environment setup
  - License: N/A (Free)
  - Notes: See DEV_ENV_SETUP.md for WSL installation steps

- [ ] **AWS Session Manager Plugin** *(Install in WSL)*
  - Installation: Install in WSL/zsh after dev environment setup
  - License: N/A (Free)
  - Notes: See DEV_ENV_SETUP.md for WSL installation steps

### Gaming Platforms & Launchers

- [ ] **Steam**
  - Installation: `winget install --id Valve.Steam -e --source winget` or download from <https://store.steampowered.com/about/>
  - License: N/A (Free)
  - Notes: Install games from Steam library after installation

- [ ] **Battle.net**
  - Installation: Download from <https://www.battle.net/en/download>
  - License: N/A (Free)
  - Notes: Blizzard/Activision game launcher

- [ ] **Ubisoft Connect**
  - Installation: Download from <https://www.ubisoft.com/en-us/launcher> or `winget install --id Ubisoft.Connect -e --source winget`
  - License: N/A (Free, requires Ubisoft account)
  - Notes: Gaming platform for Ubisoft games

- [ ] **Rockstar Games Launcher**
  - Installation: Download from <https://www.rockstargames.com/rockstar-games-launcher>
  - License: N/A (Free)
  - Notes: Required for Rockstar games (GTA V, etc.)

- [ ] **Battlestate Games Launcher**
  - Installation: Download from <https://www.escapefromtarkov.com/>
  - License: N/A (Free, requires game purchase)
  - Notes: Required for Escape from Tarkov

- [ ] **Epic Games Launcher**
  - Installation: `winget install --id EpicGames.EpicGamesLauncher -e --source winget` or download from <https://www.epicgames.com/store/en-US/download>
  - License: N/A (Free)
  - Notes: Epic Games store and launcher

### Hardware Control & Monitoring

- [ ] **ASUS Armoury Crate**
  - Installation: Download from ASUS support site or pre-installed on ASUS systems
  - License: N/A (Free)
  - Notes: RGB control, system monitoring, driver updates. Includes AURA SDK and DriverHub

- [ ] **NZXT CAM**
  - Installation: Download from <https://www.nzxt.com/cam-app>
  - License: N/A (Free)
  - Notes: NZXT hardware monitoring and RGB control

- [ ] **Logitech G HUB**
  - Installation: `winget install --id Logitech.GHUB -e --source winget` or download from <https://www.logitechg.com/en-us/innovation/g-hub.html>
  - License: N/A (Free)
  - Notes: Logitech gaming peripherals configuration

- [ ] **SteelSeries GG**
  - Installation: Download from <https://steelseries.com/gg>
  - License: N/A (Free)
  - Notes: SteelSeries peripherals configuration

- [ ] **CPUID HWMonitor**
  - Installation: Download from <https://www.cpuid.com/softwares/hwmonitor.html>
  - License: N/A (Free)
  - Notes: Hardware monitoring and temperature tracking

- [ ] **Samsung Magician**
  - Installation: Download from <https://semiconductor.samsung.com/consumer-storage/support/tools/>
  - License: N/A (Free)
  - Notes: Samsung SSD management and optimization

- [ ] **Western Digital Dashboard**
  - Installation: Download from <https://support-en.wd.com/app/products/product-detail/p/227/~/wd_dashboard>
  - License: N/A (Free)
  - Notes: Western Digital drive management

- [ ] **L-Connect 3**
  - Installation: Download from <https://lian-li.com/l-connect-3/>
  - License: N/A (Free)
  - Notes: Lian Li RGB fan and lighting control

- [ ] **AMD Ryzen Master**
  - Installation: Download from <https://www.amd.com/en/technologies/ryzen-master>
  - License: N/A (Free)
  - Notes: AMD Ryzen CPU monitoring and overclocking

### Graphics Drivers & Software

- [ ] **NVIDIA Graphics Driver**
  - Installation: Download from <https://www.nvidia.com/Download/index.aspx> or via NVIDIA App
  - License: N/A (Free)
  - Notes: Install latest driver for your GPU. Includes PhysX and ShadowPlay via NVIDIA App

- [ ] **NVIDIA App**
  - Installation: Download from <https://www.nvidia.com/en-us/geforce/geforce-experience/> or Microsoft Store
  - License: N/A (Free)
  - Notes: Driver updates, game optimization, ShadowPlay recording. Includes PhysX System Software

- [ ] **AMD Chipset Software**
  - Installation: Download from <https://www.amd.com/en/support> or AMD support site
  - License: N/A (Free)
  - Notes: AMD chipset drivers and optimization

### System Utilities

- [ ] **Dropbox**
  - Installation: `winget install --id Dropbox.Dropbox -e --source winget` or download from <https://www.dropbox.com/download>
  - License: N/A (Free/Paid)
  - Notes: Cloud storage and backup location

### Printers & Scanners

- [ ] **Canon TS5100 Series Drivers & Software**
  - Installation: Download from Canon support site for TS5100 series
  - License: N/A (Free)
  - Notes: Includes MP Drivers, Printer Assistant Tool, Scan Utility, Network Scanner Selector EX2

### Other

- [ ] **Zwift**
  - Installation: Download from <https://www.zwift.com/>
  - License: N/A (Free/Paid subscription)
  - Notes: Fitness/cycling training app

## Installation Progress

- Total software items: ~30
- Completed: 0
- Remaining: ~30

## Notes

### Games

- All games should be installed from their respective launchers (Steam, Battle.net, Ubisoft Connect, etc.) after the launchers are installed
- Games are not listed individually as they can be reinstalled from launcher libraries

### Development Tools in WSL

- AWS CLI v2, AWS SAM CLI, and Session Manager Plugin should be installed in WSL/zsh environment
- See DEV_ENV_SETUP.md for WSL setup instructions

### Hardware-Specific Software

- Some hardware control software (ASUS Armoury Crate, NZXT CAM, etc.) may need to be downloaded from manufacturer websites
- Graphics drivers should be installed early in the process for proper display functionality

### Installation Order Recommendation

1. Graphics drivers (NVIDIA/AMD)
2. Browsers (Chrome)
3. Development tools (Git, GitHub CLI, Docker)
4. Gaming platforms
5. Hardware control software
6. System utilities
7. Other applications
