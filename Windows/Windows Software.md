# Windows Software

A list of all software installed on the RiversideAG stream PC.

When `commands` are listed, you should run them by opening **Terminal**, which by default runs **Powershell**. If you open **Terminal** as an administrator, you won't have to confirm your permissions for subsequent installations.

## Git

The most common version control system.

### Git Bash

An alternate terminal which runs Bash and has access to Git.

*Note: May need to restart Powershell to add Git to the PATH.*

```powershell
winget install --id Git.Git -e --source winget
```

### posh-git

A version of Git which runs in Powershell.

```powershell
# run the shell as administrator
Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force
Install-Module posh-git -Scope AllUsers -Force
Import-Module posh-git
Add-PoshGitToProfile -AllHosts
# force Git to use the Windows system's SSH binary
git config --global core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
```

## Win11Debloat

A PowerShell script that removes pre-installed apps, disables telemetry, fixes configuration options, and generally de-bloats the overall Windows installation.

### Installation

```powershell
cd 'C:\Program Files\'
Git clone https://github.com/Raphire/Win11Debloat.git
```

Copy `CustomAppsList` and `LastUsedSettings.json` to `C:\Program Files\Win11Debloat`.

See `Windows Debloating.md` for usage instructions.

## Mozilla Firefox

An open-source browser that respects your privacy.

### Installation

```powershell
winget install -e --id Mozilla.Firefox --source winget
```

### Settings

- General
  - Startup
    - Open previous windows and tabs: **Yes**
    - Always check if Firefox is your default browser: **No**
  - Tabs
    - Use AI to suggest tabs and a name for tab groups: **No**
  - Contrast Control: **Off**
  - Downloads
    - Always ask you where to save files: **Yes**
  - Browsing
    - Recommend extensions as you browse: **No**
    - Recommend features as you browse: **No**
- Home
  - Firefox Home Content
    - Weather: **No**
    - Recommended stories: **No**
    - Support Firefox: **No**
- Search
  - Default Search Engine: **DuckDuckGo**
  - Firefox Suggest
    - Suggestions from Firefox: **No**
- Privacy & Security
  - Enhanced Tracking Protection: **Strict**
  - Passwords
    - Ask to save passwords: **No**
  - Payment methods: **No**
  - Addresses and more: **No**
  - Firefox Data Collection and Use
    - Allow personalized extension recommendations: **No**
    - Install and run studies: **No**
  - Https-Only Mode: **Enable HTTPS-Only Mode in all windows**
  - Enable DNS over HTTPS using: **Increased Protection**

### Extensions

- ClearURLs
- DuckDuckGo Privacy Essentials
- Privacy Badger
- Return Youtube Dislike
- Sponsorblock
- Tabliss
- uBlock Origin

## VLC Media Player

Free and open-source, the best media player.

### Installation

```powershell
winget install -e --id VideoLAN.VLC --source winget
```

## LibreOffice

Free and open source office suite, an alternative to Word, Excel and Powerpoint.

### Installation

```powershell
winget install -e --id TheDocumentFoundation.LibreOffice --source winget
```

### Settings

- Libreoffice
  - Appearance
    - Use white document background: **Yes**
    - Toolbar: **Small**
  - Load/Save
    - General
      - Save AutoRecovery information every: `1` minutes
      - Automatically save the document instead: **Yes**
- Toolbar: **Tabbed**

## Sumatra PDF

Free and open source PDF reader.

### Installation

```powershell
winget install -e --id SumatraPDF.SumatraPDF --source winget
```

## PowerToys

Free and open source set of utilities for Windows.

### Installation

```powershell
winget install -e --id Microsoft.PowerToys --source winget
```

### Settings

- Advanced Paste: **No**
- Awake: **No**
- PowerToys Run: **No**
- Crop and Lock: **No**

## Rufus

Free and open source tool for creating bootable USB drives.

### Installation

1. Install from https://rufus.ie/en/#download
2. Move the downloaded executable to a `Rufus` folder in `C:\Program Files`.
3. Pin the executable to the start menu and then unpin it, which adds it to the applications list.

## Notepad++

Free and open source text and code editor.

### Installation

```powershell
winget install -e --id Notepad++.Notepad++ --source winget
```

## VSCode

A mostly open-source code editor with an enormous library of extensions.

### Installation

```powershell
winget install -e --id Microsoft.VisualStudioCode --source winget
```

## Audacity

Free and open source audio recording and editing software.

### Installation

```powershell
winget install -e --id Audacity.Audacity --source winget
```

## OBS Studio

Free and open source software for video recording and live streaming.

### Installation

```powershell
winget install -e --id OBSProject.OBSStudio --source winget
```

## Handbrake

Open source tool built upon ffmpeg for converting video.

### Installation

```powershell
winget install -e --id HandBrake.HandBrake --source winget
```

## 7-Zip

Zip file archiver.

### Installation

```powershell
winget install -e --id 7zip.7zip --source winget
```

## Davinci Resolve

A free but still powerful cross-platform video editor.

### Installation

Davinci Resolve requires registration to download, but not any payment information. It can be downloaded from [blackmagicdesign.com/products/davinciresolve](https://www.blackmagicdesign.com/products/davinciresolve).

1. Download Davinci Resolve (`.zip`) to the **Downloads** folder.
2. Extract the downloaded zip file.
3. Run the Davinci Resolve Installer (`.exe`)
    1. Select all components for installation.
    2. Accept the End-User License Agreement.
    3. Select the default installation location (`C:\Program Files\Blackmagic Design\DaVinci Resolve\`).
    4. Click **Install** and then **Finish** once installation is complete.

## eza

A modern replacement for ls.

### Installation

```powershell
winget install -e --id eza-community.eza
```

## Windows Subsystem for Linux (WSL)

A subsystem which allows Linux distributions to be installed within the existing Windows installation. Required for Docker's virtual machine functionality.

### Installation

The following instructions install Ubuntu through WSL, which is one of the most popular and best maintained Linux distributions.

```powershell
wsl --update  # update wsl
wsl --install Ubuntu  # install Ubuntu through WSL
code --install-extension ms-vscode-remote.remote-wsl  # install the vscode WSL extension
```

1. Create a default Unix user account: `riversideag`
2. Password: *Choose a 16+ character password and save it somewhere secure, like a password manager. You can ask one of the media booth staff if you need the current password.*

### WSL Tips

- You can start Ubuntu by opening **Terminal** and clicking the drop-down arrow next to the new tab button. This will allow you to select **Ubuntu**, which opens an Ubuntu shell in a new tab.
- You can access the Windows file system from within Ubuntu through the `/mnt/c` directory.
- You can access the Ubuntu file system through the Windows File Explorer by clicking the **Linux** icon in the side bar.
- Applications running on Localhost through WSL are accessible through Windows just like they would be if they were running on Windows.
