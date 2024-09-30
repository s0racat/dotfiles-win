copy-Item .\keepassxc\keepassxc.ini $env:appdata\KeePassXC\keepassxc.ini
copy-Item .\windows-terminal\settings.json $env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
copy-Item .\fancywm\settings.json $env:localappdata\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json
copy-Item .\wezterm\wezterm.lua $env:USERPROFILE\.wezterm.lua
copy-Item .\firefox\profiles.ini $env:appdata\Mozilla\Firefox\profiles.ini
copy-Item -recurse .\firefox\default $env:appdata\Mozilla\Firefox\Profiles


