# Script for setting up a Windows Development Kit

#Requires -RunAsAdministrator

Write-Host ""
Write-Host "Setting up your Windows..." -ForegroundColor White -BackgroundColor Green

Write-Host ""
Write-Host "First of all make sure that you have the newest Powershell installed from"
Write-Host "the Microsoft Store before you run this script."
Write-Host "-------------------------------------------------------------------------"

Write-Host ""
Write-Host "Run this script ONLY on a fresh Windows installation"
Write-Host ""

Write-Host "This will (re)install all apps. Are you sure you want to run this?" -ForegroundColor White -BackgroundColor Red
$yesNo = Read-Host "Continue? (Y/n): "
Write-Host ""

$USER_USERNAME = "dogukale"
$USER_EMAIL = "d.kalemli@outlook.com"

If ($yesNo -eq 'y') {
	& $PSScriptRoot\scripts\scoopInstall.ps1 -ScoopDir 'C:\Scoop' -ScoopGlobalDir 'C:\ScoopGlobalApps' -NoProxy
	& $PSScriptRoot\scripts\scoopApps.ps1
	& $PSScriptRoot\scripts\nvm.ps1
	& $PSScriptRoot\scripts\git.ps1
	& $PSScriptRoot\scripts\pwsh.ps1

	Write-Host "All done!" -ForegroundColor Green
} Else {
	Write-Host "Setup is interrupted. Try again."
}

Write-Host ""
