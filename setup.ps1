#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force

# install chocolatey if not installed
Write-Host "⚙️ Checking for Chocolatey"
if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
    Write-Host "Chocolatey not found, installing chocolatey"
    Invoke-Expression((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "✔️ Chocolatey installed"
}
else {
    Write-Host "✔️ Chocolatey found"
}

Write-Host "⚙️ Setting up Windows features"
Get-Content ".\windows-features.txt" | ForEach-Object { ($_ -split "\r\n")[0] } | ForEach-Object {
    Write-Host "📦 Setting up DSIM package: $_"
    choco install $_ /y /source windowsfeatures
}

Write-Host "⚙️ Installing applications"
Get-Content ".\chocolatey.txt" | ForEach-Object { ($_ -split "\r\n")[0] } | ForEach-Object {
    Write-Host "📦 Installing package: $_"
    choco install $_ /y
} } }
