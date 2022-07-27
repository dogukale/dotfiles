# Setup Scoop and (re)install apps

Write-Host "Installing Git..." -ForegroundColor Green
scoop install git

$Buckets = 'extras', 'version', 'php', 'java'
ForEach ($BucketName in $Buckets) {
	Write-Host "Adding bucket $BucketName..." -ForegroundColor Green
	scoop bucket add $BucketName
}

$Packages = 'firefox', 
			'googlechrome', 
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
			'phpstorm', 
			'webstorm', 
			'pycharm', 
			'sublime-text', 
			'ccleaner', 
			'discord', 
			'thunderbird', 
			'teamviewer', 
			'whatsapp', 
			'obs-studio', 
			'zoom'
ForEach ($PackageName in $Packages) {
	Write-Host "Installing $PackageName..." -ForegroundColor Green
	scoop install $PackageName
}

Write-Host ""
