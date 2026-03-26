# .dotfiles

My personal macOS dotfiles for setting up a new machine.

## New Machine Setup

### Before setup: copy to the new computer

- `repos`
- `.npmrc` and `.nuget-folder`
- `.microsoft/`

### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Clone this repo

```bash
git clone <your-repo-url> ~/.dotfiles
cd ~/.dotfiles
```

### 3. Install packages and applications

Installs Oh My Zsh, Homebrew packages, and all macOS applications.

```bash
bash install.sh
```

### 4. Create symlinks

Links dotfiles (`.zshrc`, `.gitconfig`, `.gitignore`, `.prettierrc`) and VS Code settings to their correct locations.

```bash
bash symlink.sh
```

### 5. Install VS Code extensions

```bash
bash vscode-extensions.sh
```

---

## What's included

| File | Description |
|---|---|
| `install.sh` | Installs Oh My Zsh, Homebrew formulae and casks |
| `symlink.sh` | Creates symlinks for dotfiles and VS Code/Rider settings |
| `vscode-extensions.sh` | Installs all VS Code extensions |
| `.zshrc` | Zsh shell configuration |
| `.gitconfig` | Git configuration |
| `.gitignore` | Global gitignore |
| `.prettierrc` | Prettier code formatter config |
| `VSCode/` | VS Code settings and keybindings |
