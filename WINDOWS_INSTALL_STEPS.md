# Windows Fresh Install - Detailed Steps

## Phase 2.1: Format and Install Windows

### Step 1: Boot from USB Installation Media

1. **Insert your bootable USB drive** into your computer

2. **Restart your computer**

3. **Access Boot Menu or BIOS/UEFI:**
   - As the computer starts, repeatedly press one of these keys (varies by manufacturer):
     - **F12** (most common - Boot Menu)
     - **F2** or **Del** (BIOS/UEFI Setup)
     - **F8**, **F10**, or **Esc** (some systems)
   - You may see a message like "Press F12 for Boot Menu" or "Press Del to enter Setup"
   - If you miss it, restart and try again

4. **Select USB drive from Boot Menu:**
   - In Boot Menu: Use arrow keys to select your USB drive, press Enter
   - In BIOS/UEFI:
     - Navigate to "Boot" or "Boot Order" section
     - Move USB drive to the top of boot priority
     - Save and exit (usually F10)

5. **Windows installation should start:**
   - You'll see "Windows is loading files..."
   - Then the Windows installation screen

### Step 2: Windows Installation Process

1. **Language and Region Settings:**
   - Select your language, time format, and keyboard layout
   - Click **"Next"**

2. **Install Now:**
   - Click **"Install now"** button

3. **Product Key:**
   - You may be prompted for a product key
   - Enter your key from Dropbox backup: `PC-Backup-2026\software-list\windows-product-key.txt` (or skip if using digital license)
   - Or click **"I don't have a product key"** if you have a digital license
   - Click **"Next"**

4. **Select Windows Edition:**
   - Choose **Windows 11 Home** or **Windows 11 Pro** (match your current edition)
   - Click **"Next"**

5. **Accept License Terms:**
   - Read and accept the license terms
   - Click **"Next"**

6. **Choose Installation Type:**
   - Select **"Custom: Install Windows only (advanced)"**
   - This is where you'll format drives

### Step 3: Format All Drives (CRITICAL - This Deletes Everything)

**WARNING: This will permanently delete ALL data on ALL drives!**

1. **You'll see a list of drives and partitions**

2. **Delete ALL partitions on ALL drives:**
   - Select each partition one by one
   - Click **"Delete"** for each partition
   - Confirm deletion when prompted
   - Repeat for ALL partitions on ALL drives
   - You'll see "Unallocated Space" for each drive

3. **Verify all drives are empty:**
   - All drives should show as "Unallocated Space"
   - No partitions should remain

4. **Select the primary drive (usually Drive 0):**
   - Click on the "Unallocated Space" for your primary drive (usually the largest/C: drive)
   - Click **"Next"**

5. **Windows will automatically:**
   - Create necessary partitions
   - Format the drive
   - Begin installation

### Step 4: Windows Installation

1. **Installation will proceed automatically:**
   - "Installing Windows" screen will show progress
   - Computer may restart several times
   - **DO NOT remove USB drive** during installation
   - This process takes 15-30 minutes typically

2. **After installation completes:**
   - Computer will restart
   - You may see "Getting devices ready" or "Getting ready"

### Step 5: Initial Windows Setup

1. **Region Selection:**
   - Select your country/region
   - Click **"Yes"**

2. **Keyboard Layout:**
   - Select your keyboard layout
   - Click **"Yes"**

3. **Second Keyboard Layout (optional):**
   - Click **"Skip"** if you don't need a second layout

4. **Network Connection:**
   - If network is detected: Connect to your network
   - If network is NOT detected: Click "I don't have internet" (you can set up network later)
   - **Note:** If network isn't detected, you'll need to install network drivers from Dropbox after setup

5. **Sign in with Microsoft Account:**
   - Sign in with your Microsoft account (this activates Windows if you have a digital license)
   - Or create a new account
   - Or click "Offline account" if you prefer local account

6. **Create PIN (optional):**
   - Set up a PIN for easier sign-in
   - Or click "Skip" to use password only

7. **Privacy Settings:**
   - Review privacy settings (location, diagnostics, etc.)
   - Adjust as desired
   - Click **"Accept"** or customize

8. **Optional Features:**
   - You may be prompted about Cortana, OneDrive, etc.
   - You can skip or disable these (we'll install what we need later)

9. **Windows will finish setup:**
   - "Just a moment" screen
   - Desktop will appear

### Step 6: Verify Installation

1. **Check Windows is activated:**
   - Settings → System → Activation
   - Should show "Windows is activated"

2. **Check all drives are formatted:**
   - File Explorer should show only the C: drive (or drives you created)
   - All old data should be gone

## Important Notes

- **DO NOT remove USB drive** until Windows is fully installed and you're at the desktop
- If network isn't detected, don't worry - you have drivers in Dropbox
- If Windows doesn't activate automatically, you can enter your product key later in Settings
- After installation, proceed to Phase 2.2 (Post-Install Configuration)

## Troubleshooting

- **Can't boot from USB:** Check BIOS/UEFI settings, ensure USB is enabled as boot device
- **Installation fails:** Check USB drive integrity, try recreating bootable USB
- **Network not detected:** This is normal, install drivers from Dropbox after setup (Phase 2.2)
