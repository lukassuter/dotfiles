homedir=$1

dotfiledir=~/.dotfiles

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "Done"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Brew MacOS Applications
brew install --cask alfred
brew install --cask calibre
brew install --cask docker
brew install --cask docker-desktop
brew install --cask dotnet
brew install --cask dotnet-runtime
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask microsoft-azure-storage-explorer
brew install --cask microsoft-remote-desktop
brew install --cask microsoft-teams
brew install --cask notion
brew install --cask postman
brew install --cask spectacle
brew install --cask spotify
brew install --cask visual-studio-code
