# Setup Scoop and (re)install apps

Write-Host "Installing Git..." -ForegroundColor Green
scoop install git

$Buckets = 'extras', 'version', 'php', 'java'
ForEach ($BucketName in $Buckets) {
	Write-Host "Adding bucket $BucketName..." -ForegroundColor Green
	scoop bucket add $BucketName
}

$Packages = 'googlechrome', 
			'php', 
			'nvm', 
			'composer', 
			'laragon', 
			'tableplus', 
			'sourcetree', 
			'putty', 
			'filezilla', 
			'starship', 
			'oraclejre8', 
			'python', 
			'jetbrains-toolbox', 
			'sublime-text', 
			'ccleaner', 
			'discord', 
			'thunderbird', 
			'teamviewer', 
			'whatsapp', 
			'obs-studio', 
			'zoom', 
			'winrar', 
			'figma', 
			'notion', 
			'openoffice', 
			'vscode', 
			'postgresql', 
			'firebase'
ForEach ($PackageName in $Packages) {
	Write-Host "Installing $PackageName..." -ForegroundColor Green
	scoop install $PackageName
}

Write-Host ""
