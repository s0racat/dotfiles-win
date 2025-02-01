function Copy-ItemWithDirs {
    param (
        [string]$Source,
        [string]$Destination,
        [switch]$Recurse
    )

    $DestDir = Split-Path -Parent $Destination
    if (!(Test-Path $DestDir)) {
        New-Item -ItemType Directory -Path $DestDir -Force | Out-Null
    }
    
    if ($Recurse) {
        Copy-Item -Verbose -Recurse $Source -Destination $Destination
    } else {
        Copy-Item -Verbose $Source -Destination $Destination
    }
}

Copy-ItemWithDirs .\keepassxc\keepassxc.ini $env:appdata\KeePassXC\keepassxc.ini
Copy-ItemWithDirs .\windows-terminal\settings.json $env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
Copy-ItemWithDirs .\fancywm\settings.json $env:localappdata\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json
Copy-ItemWithDirs .\wezterm\wezterm.lua $env:USERPROFILE\.wezterm.lua
Copy-ItemWithDirs .\firefox\profiles.ini $env:appdata\Mozilla\Firefox\profiles.ini
Copy-ItemWithDirs -Recurse .\firefox\. $env:appdata\Mozilla\Firefox\Profiles
