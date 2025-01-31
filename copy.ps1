copy-Item -Verbose .\keepassxc\keepassxc.ini $env:appdata\KeePassXC\keepassxc.ini
copy-Item -Verbose .\windows-terminal\settings.json $env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
copy-Item -Verbose .\fancywm\settings.json $env:localappdata\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json
copy-Item -Verbose .\wezterm\wezterm.lua $env:USERPROFILE\.wezterm.lua
copy-Item -Verbose .\firefox\profiles.ini $env:appdata\Mozilla\Firefox\profiles.ini
copy-Item -Verbose -force -recurse .\firefox\default $env:appdata\Mozilla\Firefox\Profiles


