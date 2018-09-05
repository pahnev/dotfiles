set -e
set -o pipefail
set -u

export DOTFILES="$(dirname "$(readlink "/")")"

if [ ! -d xcode ]; then
  echo "Must be run from root of dotfiles"
  exit 1
fi

bindings="$HOME/Library/Developer/Xcode/UserData/KeyBindings"
rm -f "$bindings/Custom.idekeybindings"
mkdir -p "$bindings"
cp "$DOTFILES/xcode/Custom.idekeybindings" "$bindings"

colors="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
rm -f "$colors/CiapreBlue.xccolortheme"
rm -f "$colors/CiapreBlueWhiteBG.xccolortheme"
mkdir -p "$colors"
cp "$DOTFILES/xcode/CiapreBlue.xccolortheme" "$colors"
cp "$DOTFILES/xcode/CiapreBlueWhiteBG.xccolortheme" "$colors"

breakpoints="$HOME/Library/Developer/Xcode/UserData/xcdebugger"
rm -f "$breakpoints/Breakpoints_v2.xcbkptlist"
mkdir -p "$breakpoints"
cp "$DOTFILES/xcode/Breakpoints_v2.xcbkptlist" "$breakpoints"

echo "- Setting up Xcode"

# Trim trailing whitespace
defaults write com.apple.dt.Xcode DVTTextEditorTrimTrailingWhitespace -bool true

# Trim whitespace only lines
defaults write com.apple.dt.Xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true

# Show line numbers
defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool true

# Show ruler at 160 chars
defaults write com.apple.dt.Xcode DVTTextShowPageGuide -bool true
defaults write com.apple.dt.Xcode DVTTextPageGuideLocation -int 160

# Set theme to CiapreBlue
defaults write com.apple.dt.Xcode XCFontAndColorCurrentTheme -string CiapreBlue.xccolortheme

# Set custom key bindings
defaults write com.apple.dt.Xcode IDEKeyBindingCurrentPreferenceSet -string Custom.idekeybindings

# Command click jump to definition
defaults write com.apple.dt.Xcode IDECommandClickNavigates -bool true