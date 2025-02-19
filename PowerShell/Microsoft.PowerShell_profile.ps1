# $env:HTTP_PROXY="http://127.0.0.1:7890"; $env:HTTPS_PROXY="http://127.0.0.1:7890"
Invoke-Expression "$(vfox activate pwsh)"
# Invoke-Expression (&starship init powershell)


# function y {
#     $tmp = [System.IO.Path]::GetTempFileName()
#     yazi $args --cwd-file="$tmp"
#     $cwd = Get-Content -Path $tmp
#     if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
#         Set-Location -LiteralPath $cwd
#     }
#     Remove-Item -Path $tmp
# }