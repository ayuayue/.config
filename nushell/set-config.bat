@echo off
set "current_dir=%cd%"
mklink "%USERPROFILE%\AppData\Roaming\nushell\env.nu" "%current_dir%\env.nu" 
mklink "%USERPROFILE%\AppData\Roaming\nushell\config.nu" "%current_dir%\config.nu" 
