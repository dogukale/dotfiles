# Config setup for Git

Copy-Item ".\.gitignore" -Destination "$HOME"

git config --global user.name $USER_FULLNAME
git config --global user.email $USER_EMAIL

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global branch.master.rebase true
git config --global branch.dev.rebase true

git config --global branch.autosetuprebase remote
git config --global branch.autosetupmerge true

git config --global push.default current

git config --global merge.log true
git config --global merge.ff false

Write-Host ""
