# VS Code Extensions
for vscodeextension in aaron-bond.better-comments cssho.vscode-svgviewer dbaeumer.vscode-eslint dzhavat.bracket-pair-toggler eamodio.gitlens esbenp.prettier-vscode formulahendry.auto-rename-tag foxundermoon.shell-format ms-dotnettools.csharp patbenatar.advanced-new-file redhat.vscode-xml richie5um2.vscode-sort-json streetsidesoftware.code-spell-checker Tyriar.sort-lines vscode-icons-team.vscode-icons wmaurer.change-case; do
    echo "Installing $vscodeextension extension to VS Code"
    code --install-extension ${vscodeextension}
done
