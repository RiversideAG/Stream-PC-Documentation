# import posg-git module for git command completion
Import-Module posh-git

# set alias for better ls
function le {eza -l @args}

# set aliases for clearing the screen
function clear {Clear-Host}
function c {Clear-Host}

# set alias for reloading the shell configuration
function reload {. ~\Documents\WindowsPowerShell\profile.ps1}

# set alias for touch command to create files
function touch {
    param([string]$file)

    if (Test-Path $file) {
        # Update the timestamp if the file exists
        Set-ItemProperty -Path $file -Name LastWriteTime -Value (Get-Date)
    }
    else {
        # Create a new file if it doesn't exist
        New-Item -Path $file -ItemType File
    }
}

# add python Scripts directory to the path
$directories = Get-ChildItem -Path "C:\Users\RiversideAG\AppData\Local\Python\" -Directory
foreach ($dir in $directories) {
    # check if the directory contains a Scripts subdirectory
    $scriptsPath = Join-Path -Path $dir.FullName -ChildPath "Scripts"
    if (Test-Path -Path $scriptsPath -PathType Container) {
        # add the directory to the path
        $env:path += ";$scriptsPath"
    }
}