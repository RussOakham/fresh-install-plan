# Installed Software List - For Review

Run the following command to generate your installed software list:

```powershell
# Quick method using PowerShell
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | 
    Where-Object {$_.DisplayName} | 
    Select-Object DisplayName, Publisher, DisplayVersion | 
    Sort-Object DisplayName | 
    Export-Csv -Path installed-software.csv -NoTypeInformation

# Or use the provided script
.\get-installed-software.ps1
```

## Instructions

1. Run the command above to generate `installed-software.csv`
2. Review the list and identify which applications you want to include in `SOFTWARE_LIST.md`
3. For each application, decide:
   - Installation method (winget, direct download, manual)
   - License key location (if applicable)
   - Any special notes

## Common Applications to Consider

- Browsers (Chrome, Firefox, Edge, etc.)
- Communication tools (Slack, Discord, Teams, etc.)
- Media players (VLC, Spotify, etc.)
- Productivity software (Office, Notion, etc.)
- Development tools (already covered in DEV_ENV_SETUP.md)
- Gaming platforms (Steam, Epic Games, etc.)
- Utilities (7-Zip, WinRAR, etc.)
- Security software (VPN, antivirus, etc.)

Note: System applications and Windows components are typically not needed in this list.

