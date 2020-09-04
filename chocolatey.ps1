#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force

# install chocolatey if not installed
Write-Host "Checking for Chocolatey"
if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
    Write-Host "Chocolatey not found, installing"
    Invoke-Expression((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
    Write-Host "Chocolatey found"
}

# Write-Host "Installing applications"
Get-Content ".\chocolatey.txt" | ForEach-Object { ($_ -split "\r\n")[0] } | ForEach-Object {
    choco install $_ /y
}
