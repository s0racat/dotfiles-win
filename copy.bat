echo F | xcopy /i /e /y .\keepassxc\keepassxc.ini %appdata%\KeePassXC\keepassxc.ini
echo F | xcopy /i /e /y .\windows-terminal\settings.json %localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
echo F | xcopy /i /e /y .\fancywm\settings.json %localappdata%\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json
echo F | xcopy /i /e /y .\wezterm\wezterm.lua %USERPROFILE%\.wezterm.lua
echo F | xcopy /i /e /y .\firefox\profiles.ini %appdata%\Mozilla\Firefox\profiles.ini
xcopy /i /e /y .\firefox\default\* %appdata%\Mozilla\Firefox\Profiles\default
xcopy /i /e /y zebar\a %userprofile%\.glzr\zebar\a
echo F | xcopy /i /e /y glazewm\config.yaml %userprofile%\.glzr\glazewm\config.yaml
echo  F|xcopy   /i  /e  /y  komorebi\applications.json %userprofile%
echo  F|xcopy   /i  /e  /y  komorebi\komorebi.json %userprofile%
echo  F|xcopy   /i  /e  /y  komorebi\komorebi.bar.json %userprofile%
echo  F|xcopy   /i  /e  /y  komorebi\whkdrc %userprofile%\.config
echo  F|xcopy   /i  /e  /y  alacritty\alacritty.toml %appdata%\alacritty\alacritty.toml

echo  F|xcopy   /i  /e  /y  powershell\Microsoft.PowerShell_profile.ps1 %userprofile%\Documents\WindowsPowerShell
echo  F|xcopy   /i  /e  /y  powershell\Microsoft.PowerShell_profile.ps1 %userprofile%\Documents\PowerShell



pause
