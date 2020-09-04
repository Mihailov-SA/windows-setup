Set-ExecutionPolicy Bypass -Scope Process -Force

#region Scoop-Install
Write-Host "Checking for Scoop"
if (!(Test-Path -Path "$HOME\scoop")) {
    Write-Host "Scoop not found, installing"
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}
else {
    Write-Host "Scoop found"
}
#endregion Scoop-Install

#region Scoop-Buckets
Write-Host "Configuring Scoop buckets"
scoop bucket add extras
scoop bucket add games
scoop bucket add java
scoop bucket add nerd-fonts
#endregion Scoop-Buckets

#region Scoop-App-Install
Get-Content ".\scoop.txt" | ForEach-Object { ($_ -split "\r\n")[0] } | ForEach-Object {
    scoop install $_
}
#endregion Scoop-App-Install
