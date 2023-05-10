# Config setup for PowerShell

$Packages = 'Terminal-Icons', 
			'PSReadLine', 
			'z'
ForEach ($PackageName in $Packages) {
	Write-Host "Installing $PackageName..." -ForegroundColor Green
	Install-Module -Name $PackageName -Force
}

If(!(Test-Path -Path "$HOME\.config")) {
	mkdir $HOME\.config
}

If(!(Test-Path -Path "$HOME\Documenten\PowerShell")) {
	mkdir $HOME\Documents\PowerShell
}

Copy-Item ".\Microsoft.PowerShell_profile.ps1" -Destination "$HOME\Documents\PowerShell"
Copy-Item ".\.config\starship.toml" -Destination "$HOME\.config"

Write-Host ""
