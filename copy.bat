echo F | xcopy /i /e /y .\keepassxc\keepassxc.ini %appdata%\KeePassXC\keepassxc.ini
echo F | xcopy /i /e /y .\windows-terminal\settings.json %localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
echo F | xcopy /i /e /y .\fancywm\settings.json %localappdata%\Packages\2203VeselinKaraganev.FancyWM_9x2ndwrcmyd2c\LocalCache\Roaming\FancyWM\settings.json
echo F | xcopy /i /e /y .\wezterm\wezterm.lua %USERPROFILE%\.wezterm.lua
echo F | xcopy /i /e /y .\firefox\profiles.ini %appdata%\Mozilla\Firefox\profiles.ini
xcopy /i /e /y .\firefox %appdata%\Mozilla\Firefox\Profiles

pause