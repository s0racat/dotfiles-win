@echo off

mkdir "%appdata%\KeePassXC" 2>nul
mkdir "%localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" 2>nul
mkdir "%localappdata%\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM" 2>nul
mkdir "%appdata%\Mozilla\Firefox\Profiles\default" 2>nul
mkdir "%userprofile%\.glzr\zebar\a" 2>nul
mkdir "%userprofile%\.glzr\glazewm" 2>nul
mkdir "%userprofile%\.config" 2>nul
mkdir "%appdata%\alacritty" 2>nul
mkdir "%userprofile%\Documents\WindowsPowerShell" 2>nul
mkdir "%userprofile%\Documents\PowerShell" 2>nul

copy /y ".\keepassxc\keepassxc.ini" "%appdata%\KeePassXC\keepassxc.ini"

copy /y ".\windows-terminal\settings.json" "%localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

copy /y ".\fancywm\settings.json" "%localappdata%\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json"

copy /y ".\wezterm\wezterm.lua" "%USERPROFILE%\.wezterm.lua"

copy /y ".\firefox\profiles.ini" "%appdata%\Mozilla\Firefox\profiles.ini"

xcopy ".\firefox\default\*" "%appdata%\Mozilla\Firefox\Profiles\default\" /i /e /y

xcopy "zebar\a" "%userprofile%\.glzr\zebar\a\" /i /e /y

copy /y "glazewm\config.yaml" "%userprofile%\.glzr\glazewm\config.yaml"

copy /y "komorebi\applications.json" "%userprofile%\applications.json"
copy /y "komorebi\komorebi.json" "%userprofile%\komorebi.json"
copy /y "komorebi\komorebi.bar.json" "%userprofile%\komorebi.bar.json"

copy /y "komorebi\whkdrc" "%userprofile%\.config\whkdrc"

copy /y "alacritty\alacritty.toml" "%appdata%\alacritty\alacritty.toml"

copy /y "powershell\Microsoft.PowerShell_profile.ps1" "%userprofile%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

copy /y "powershell\Microsoft.PowerShell_profile.ps1" "%userprofile%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"

pause
