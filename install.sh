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

./brew.sh
./vscode.sh
./rider.sh
