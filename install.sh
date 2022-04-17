xcode-select --install

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

dotfiledir=${homedir}/dotfiles

files="bash_profile bashrc bash_prompt aliases private"

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -s ${dotfiledir}/.${file} ${homedir}/.${file}
done

# Brew
# Packages
brew install node
brew install git
brew install openconnect

# MacOS Applications
brew install --cask 1password
brew install --cask docker
brew install --cask microsoft-azure-storage-explorer
brew install --cask spotify
brew install --cask firefox
brew install --cask microsoft-remote-desktop
brew install --cask rider
brew install --cask alfred
brew install --cask franz
brew install --cask microsoft-teams
brew install --cask azure-data-studio
brew install --cask google-chrome
brew install --cask notion
brew install --cask sketchup
brew install --cask sketchup-pro
brew install --cask visual-studio-code
brew install --cask insomnia
brew install --cask spectacle
brew install --cask calibre
brew install --cask vlc

# VS Code Symbolic
ln -s ~/../lukassuter/.dotfiles/VSCode/settings.json ~/../lukassuter/Library/Application\ Support/Code/User/settings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/keybindings.json ~/../lukassuter/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/snippets/ ~/../lukassuter/Library/Application\ Support/Code/User

# VS Code Extensions
vscodeextensions="aaron-bond.better-comments cssho.vscode-svgviewer dbaeumer.vscode-eslint dzhavat.bracket-pair-toggler eamodio.gitlens esbenp.prettier-vscode formulahendry.auto-rename-tag foxundermoon.shell-format ms-dotnettools.csharp ms-vscode.vscode-typescript-tslint-plugin patbenatar.advanced-new-file redhat.vscode-xml richie5um2.vscode-sort-json streetsidesoftware.code-spell-checker Tyriar.sort-lines vscode-icons-team.vscode-icons wmaurer.change-case"

# Rider Symbolic
ln -s ~/../lukassuter/.dotfiles/Rider/GlobalSettingsStorage.DotSettings ~/../lukassuter/Library/Application\ Support/JetBrains/Rider2021.3/resharper-host
