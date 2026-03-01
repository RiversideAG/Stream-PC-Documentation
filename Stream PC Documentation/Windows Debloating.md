# Windows De-bloating

Windows contains a large amount of unnecessary and unwanted applications, poorly designed default configurations, and invasive AI integrations. The goal of de-bloating is to remove these unnecessary parts of the OS.

## Win11Debloat

[Win11Debloat](https://github.com/Raphire/Win11Debloat) is a PowerShell script that removes pre-installed apps, disables telemetry, fixes configuration options, and generally de-bloats the overall Windows installation.

### Win11Debloat Installation

Follow the installation instructions for **Git** and **Win11Debloat** in `Windows Software.md`.

### Win11Debloat Automated Usage

Win11Debloat is, by default, an interactive script. It asks you what apps you want to remove and what settings you want to change. It can, however, be automated to work on pre-configured lists of apps and settings, which is what these instructions are for.

1. Copy the `CustomAppsList` and `LastUsedSettings.json` files to the `Downloads` folder on the PC. You can do this easily using a USB drive.

2. Move the `CustomAppsList` and `LastUsedSettings` files to the script directory in **File Explorer**. If you extracted the script source code using the default settings and **didn't** move the script directory to a permanent location, this should be `Downloads\Win11Debloat-[yyyy].[mm].[dd]\Win11Debloat-[yyyy].[mm].[dd]`.

3. Open **Terminal** as an administrator.

4. Navigate to the script directory with the following command. Make sure to include the quotation marks.

   ```powershell
   cd 'C:\Program Files\Win11Debloat'
   ```

   If you're not familiar with using a terminal, you should know you can press [Tab] to autocomplete the name of a directory so you don't have to type the whole name. For example, you can begin typing `Win11` and then press tab and it may be completed with `Win11Debloat`.

5. Run the following command to run the script to remove the apps listed in `CustomAppsList` and set the settings listed in `LastUsedSettings.json`.

   ```powershell
   .\Win11Debloat.ps1 -RemoveAppsCustom -RunSavedSettings
   ```

6. The script may take some time to run. When it's done, it will allow you to look back through the changes made and press any key to end execution.

### Win11Debloat Custom Usage

If you want to customize the apps removals and settings from the script, you can follow steps 1 - 5 of [Win11Debloat Automated Usage](#win11debloat-automated-usage) and then run the following command:

```powershell
.\Win11Debloat.ps1
```

This will allow you to select the apps you want to remove and the settings you want to change through the terminal. Alternatively, you can modify the `CustomAppsList` and `LastUsedSettings.json` files, although you should make sure you know what you're doing if you change these files.

## Remove Windows Ai

[Remove Windows Ai](https://github.com/zoicware/RemoveWindowsAI) is a PowerShell script that removes all AI features from Windows 11, all of which are unnecessary for most people. Running it is very simple and doesn't require installation. To remove all features, you can open **Terminal** as an administrator and run the following command:

```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
```

If you want to customize the removal, you can run this command to open a UI:

```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1")))
```

## Manual De-bloating

1. Remember to remove any unnecessary vendor pre-installed apps.
2. Disable unnecessary startup apps. You can do this from the **Startup apps** section of **Task Manager**. Before disabling a startup app, make sure you know what it is and why you don't need it on startup.
3. Customize apps and files in the start menu and on the task bar.

## Quick Reference

1. Install Win11Debloat (the `.zip` file) from the [releases page](https://github.com/Raphire/Win11Debloat/releases/latest) and move it wherever you want.

2. Copy the `CustomAppsList` and `LastUsedSettings.json` files to the script directory.

3. Run the script:

   ```powershell
   .\Win11Debloat.ps1 -RemoveAppsCustom -RunSavedSettings
   ```

4. Remove Windows AI:

   ```powershell
   & ([scriptblock]::Create((irm "https://raw.githubusercontent.com/zoicware/RemoveWindowsAI/main/RemoveWindowsAi.ps1"))) -nonInteractive -AllOptions
   ```

5. Remove vendor pre-installed apps.

6. Disable unnecessary startup apps.

7. Customize apps and files in the start menu and on the task bar.
