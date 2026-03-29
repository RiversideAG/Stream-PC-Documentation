# Windows Settings

A list of the system settings set on the RiversideAG stream PC.

## [Win11Debloat](https://github.com/Raphire/Win11Debloat)

- Theme: **Dark Mode**
- Transparency, Animations and Visual Effects: **Yes**

## Settings App

- System
  - Display
    - *Arrange display 2 above display 1.*
    - Multiple Displays
      - Make this my main display: **Yes** *(click on display 1 first)*
  - Power
    - Power Mode
      - Plugged in: **Best Performance**
    - Screen, sleep & hibernate timeouts
      - Plugged in
        - Turn my screen off after: **30 minutes**
        - Make my device sleep after: **30 minutes**
  - Multitasking
    - Snap windows: **No**
- Bluetooth & devices
  - AutoPlay
    - Use AutoPlay for all media and devices: **No**
- Apps
  - Default Apps
    - Firefox
      - Make Firefox your default browser: **Set default**
- Personalization
  - Start
    - Layout: **More pins**
    - Show recently added apps: **No**
    - Show recommended files in Start, recent files in File Explorer, and items in Jump Lists: **No**
    - Show websites from your browsing history: **No**

## Personalization

### Apps Pinned to Start

- Settings
- File Explorer
- Terminal
- Firefox
- OBS Studio
- Davinci Resolve
- Git Bash
- Windows Security
- Calculator
- Notepad
- Notepad++
- VS Code
- SumatraPDF
- LibreOffice Writer
- LibreOffice Impress
- LibreOffice Calc
- VLC media player
- HandBrake
- Audacity
- PowerToys (Preview)
- Rufus

### Apps Pinned to Taskbar

- Settings
- File Explorer
- Terminal
- Firefox
- OBS Studio
- Davinci Resolve

## Terminal

Allow powershell scripts to be executed:

```powershell
Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force
```

### Powershell Profile

Configuration options for Powershell are stored in `~\Documents\WindowsPowerShell\profile.ps1`:

```powershell
# ~\Documents\WindowsPowerShell\profile.ps1
Import-Module posh-git
```

### SSH Keys

SSH keys are stored in `~\.ssh`. These are used for authenticiation over SSH, like for GitHub and can be created using [ssh-keygen](https://www.ssh.com/academy/ssh/keygen).

### SSH Agent

The SSH Agent is a service which stores SSH keys in memory so authentication can be done automatically. This service can be set to start automatically with the following command **in an administrator shell**:

```powershell
Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
Start-Service ssh-agent
```

Then you can add keys to the service using the `ssh-add` command **in a normal shell**:

```powershell
ssh-add ~\.ssh\[key name]
```
