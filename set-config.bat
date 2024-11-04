@echo off
set "current_dir=%cd%"
mklink "%USERPROFILE%\AppData\Roaming\nushell\env.nu" "%current_dir%\nushell\env.nu" 
mklink "%USERPROFILE%\AppData\Roaming\nushell\config.nu" "%current_dir%\nushell\config.nu" 
mklink "%USERPROFILE%\.config\starship.toml" "%current_dir%\starship\starship.toml" 
mklink /D "%USERPROFILE%\.config\wezterm" "%current_dir%\wezterm" 

mklink /D "%USERPROFILE%\Documents\PowerShell" "%current_dir%\PowerShell" 
mklink /D "%USERPROFILE%\Documents\WindowsPowerShell" "%current_dir%\PowerShell" 