homedir=$1

dotfiledir=~/.dotfiles

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "Done"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Brew Packages
brew install node
brew install git
brew install nvm
brew install mkcert

# Brew MacOS Applications
brew install --cask 1password
brew install --cask alfred
brew install --cask azure-data-studio
brew install --cask calibre
brew install --cask docker
brew install --cask figma
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask messenger
brew install --cask microsoft-azure-storage-explorerci
brew install --cask microsoft-teams
brew install --cask postman
brew install --cask rider
brew install --cask spectacle
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask whatsapp
brew install --cask plex-media-server
brew install --cask signal
brew install --cask slack
