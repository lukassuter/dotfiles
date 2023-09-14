homedir=$1

dotfiledir=~/.dotfiles

files=".gitconfig .zshrc"

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "Done"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -s ${dotfiledir}/${file} ~/${file}
done

# Brew
# Packages
brew install node
brew install git
brew install nvm
brew install mkcert

# MacOS Applications
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

# VS Code Symbolic
ln -s ~/../lukassuter/.dotfiles/VSCode/settings.json ~/../lukassuter/Library/Application\ Support/Code/User/settings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/keybindings.json ~/../lukassuter/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/snippets/ ~/../lukassuter/Library/Application\ Support/Code/User

# VS Code Extensions
vscodeextensions="aaron-bond.better-comments cssho.vscode-svgviewer dbaeumer.vscode-eslint dzhavat.bracket-pair-toggler eamodio.gitlens esbenp.prettier-vscode formulahendry.auto-rename-tag foxundermoon.shell-format ms-dotnettools.csharp patbenatar.advanced-new-file redhat.vscode-xml richie5um2.vscode-sort-json streetsidesoftware.code-spell-checker Tyriar.sort-lines vscode-icons-team.vscode-icons wmaurer.change-case"

for vscodeextension in ${vscodeextensions}; do
    echo "Installing $vscodeextension extension to VS Code"
    code --install-extension ${vscodeextension}
done

# Rider Symbolic
ln -s ~/../lukassuter/.dotfiles/Rider/GlobalSettingsStorage.DotSettings ~/../lukassuter/Library/Application\ Support/JetBrains/Rider2021.3/resharper-host
