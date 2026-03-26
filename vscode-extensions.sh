# VS Code Extensions
for vscodeextension in 4ops.terraform andyyaldoo.vscode-json ccimage.jsonviewer csharpier.csharpier-vscode darfka.vbscript dbaeumer.vscode-eslint eamodio.gitlens editorconfig.editorconfig esbenp.prettier-vscode formulahendry.auto-rename-tag github.copilot-chat jetbrains.resharper-code ms-dotnettools.csdevkit ms-dotnettools.csharp ms-dotnettools.vscode-dotnet-runtime ms-mssql.data-workspace-vscode ms-mssql.mssql ms-mssql.sql-bindings-vscode ms-mssql.sql-database-projects-vscode ms-vscode.hexeditor pflannery.vscode-versionlens redhat.vscode-xml reptarsrage.vscode-manage-user-secrets richie5um2.vscode-sort-json serkonda7.vscode-vba shd101wyy.markdown-preview-enhanced sjsepan.vscode-smallvisualbasic streetsidesoftware.code-spell-checker styled-components.vscode-styled-components tyriar.sort-lines uctakeoff.vscode-counter vscode-icons-team.vscode-icons; do
    echo "Installing $vscodeextension extension to VS Code"
    code --install-extension ${vscodeextension}
done
