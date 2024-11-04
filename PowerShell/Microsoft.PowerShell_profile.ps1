$env:HTTP_PROXY="http://127.0.0.1:7890"; $env:HTTPS_PROXY="http://127.0.0.1:7890"
Invoke-Expression "$(vfox activate pwsh)"
Invoke-Expression (&starship init powershell)