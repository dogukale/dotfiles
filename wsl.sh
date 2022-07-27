#!/bin/bash

echo ""
echo "This will (re)install all apps. Are you sure you want to run this?"
read -r -p 'Continue? (Y/n): ' reply

if [[ "$reply" =~ ^([yY][eE][sS]|[yY])$ ]]
then
   sudo apt update -y && sudo apt upgrade -y
   curl -sS https://starship.rs/install.sh | sh
   sudo apt install zsh -y
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
   echo ""
   echo "Script is interrupted. Try again."
fi