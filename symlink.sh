homedir=$1

dotfiledir=~/.dotfiles

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "Done"

for file in .gitconfig .gitignore .zshrc; do
    echo "Creating symlink to $file in home directory."
    ln -s ${dotfiledir}/${file} ~/${file}
done

# VS Code Symbolic
ln -s ~/../lukassuter/.dotfiles/VSCode/settings.json ~/../lukassuter/Library/Application\ Support/Code/User/settings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/keybindings.json ~/../lukassuter/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/../lukassuter/.dotfiles/VSCode/snippets/ ~/../lukassuter/Library/Application\ Support/Code/User

# Rider Symbolic
ln -s ~/../lukassuter/.dotfiles/Rider/GlobalSettingsStorage.DotSettings ~/../lukassuter/Library/Application\ Support/JetBrains/Rider2021.3/resharper-host
