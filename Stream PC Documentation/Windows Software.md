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
