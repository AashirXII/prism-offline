# Prism offline
A PowerShell script that bypass Microsoft account verification, allowing you to use offline accounts without owning a Minecraft license.

## ⚠️ Disclaimer

> **This script is for educational purposes only.** Bypassing account verification may violate Minecraft's Terms of Service. Use at your own risk. The author is not responsible for any consequences, including account bans or legal action.


# 🎯 What it does
This script creates/overwrites the accounts.json file in Prism Launcher's configuration directory with pre-configured account settings that trick the launcher into thinking a valid Microsoft account with Minecraft entitlement exists.

# ✅ Tested On
* Prism Launcher Version: [9.4](https://github.com/PrismLauncher/PrismLauncher/releases/tag/9.4) (Recommended)

* Operating System:
* Windows 10/11
* Linux

# 📋 Prerequisites
* Windows or Linux

* Prism Launcher installed

* PowerShell
* Bash

# 🚀 Usage
Just run the script in powershell... (For Windows)
```
$accountsObj = @{
    accounts = @(
        @{
            entitlement = @{
                canPlayMinecraft = $true
                ownsMinecraft = $true
            }
            type = "MSA"
        }
    )
    formatVersion = 3
}
$accountsObj | ConvertTo-Json -Compress -Depth 10 | Set-Content -Path "$env:APPDATA\PrismLauncher\accounts.json" -Encoding utf8 -Force
```

Or in Linux

```bash
chmod +x ./setup.sh
./setup.sh
```

# 🔀 Alternatively
Run on Powershell
```
irm https://raw.githubusercontent.com/AashirXII/prism-offline/main/setup.ps1 | iex
```
# 🎮 Adding Offline Accounts (Post-Script)
After running the script successfully:

1. Launch Prism Launcher

2. Navigate to Accounts (top menu bar)

3. Click Manage Accounts

4. Click Add Offline (you should now see this option available)

5. Enter any username you want

6. Click OK

You're now ready to play!

# 🔄 Restoring Original State
To revert to normal Microsoft account login:

1. Close Prism Launcher

2. Delete accounts.json from %APPDATA%\PrismLauncher\

3. Restart Prism Launcher

4. Log in normally with your Microsoft account

# 🐛 Troubleshooting

| Issue | Solution |
|-------|----------|
| "Running scripts is disabled" | Run `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned` as Administrator |
| File not found error | Ensure Prism Launcher is installed and has been run at least once |
| "Add Offline" option doesn't appear | Re-run the script and ensure Prism Launcher is completely closed before running |
| Minecraft still asks for login | Verify the accounts.json file exists and contains the correct data |
| Script runs but no effect | Check if Prism Launcher is installed in a custom location (this script uses default path) |

# Nothing much. Enjoy!
