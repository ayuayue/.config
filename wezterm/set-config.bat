@echo off
set "current_dir=%cd%"
set "parent_dir=%current_dir%\.."
for %%F in ("%parent_dir%") do set "parent_dir=%%~fF"
mklink /D "%USERPROFILE%\.config\wezterm" "%parent_dir%\wezterm" 
