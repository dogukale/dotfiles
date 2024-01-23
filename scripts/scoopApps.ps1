# Setup Scoop and (re)install apps

Write-Host "Installing Git..." -ForegroundColor Green
scoop install git

$Buckets = 'extras', 'version', 'php', 'java'
ForEach ($BucketName in $Buckets) {
	Write-Host "Adding bucket $BucketName..." -ForegroundColor Green
	scoop bucket add $BucketName
}

$Packages = '7zip', 
			'autohotkey', 
			'ccleaner', 
			'composer', 
			'discord', 
			'filezilla', 
			'figma', 
			'firebase', 
			'googlechrome', 
			'jetbrains-toolbox', 
			'laragon', 
			'libreoffice', 
			'nvm', 
			'obs-studio', 
			'openoffice', 
			'oraclejre8', 
			'php', 
			'postman', 
			'putty', 
			'python', 
			'starship', 
			'sublime-text', 
			'tableplus', 
			'thunderbird', 
			'vscode', 
			'winrar', 
			'zoom'
ForEach ($PackageName in $Packages) {
	Write-Host "Installing $PackageName..." -ForegroundColor Green
	scoop install $PackageName
}

Write-Host ""
