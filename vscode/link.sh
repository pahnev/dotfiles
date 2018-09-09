set -e
set -o pipefail
set -u

export DOTFILES=$PWD

bindings="$HOME/Library/Application Support/Code/User"
rm -f "$bindings/keybindings.json"
mkdir -p "$bindings"
ln -s "$DOTFILES/vscode/keybindings.json" "$bindings"

settings="$HOME/Library/Application Support/Code/User"
rm -f "$settings/settings.json"
mkdir -p "$settings"
ln -s "$DOTFILES/vscode/settings.json" "$settings"

iconTheme="$HOME/Library/Application Support/Code/User"
rm -f "$iconTheme/material-icon-theme.json"
mkdir -p "$iconTheme"
ln -s "$DOTFILES/vscode/material-icon-theme.json" "$iconTheme"

iconSettings="$HOME/Library/Application Support/Code/User"
rm -f "$iconSettings/vsicons.settings.json"
mkdir -p "$iconSettings"
ln -s "$DOTFILES/vscode/vsicons.settings.json" "$iconSettings"
