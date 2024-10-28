@echo off
set "current_dir=%cd%"
mklink "%USERPROFILE%\.config\starship.toml" "%current_dir%\starship.toml" 
