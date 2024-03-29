# Check to ensure we can install Homebrew
if ! is-macos; then
  echo "Skipped: Homebrew (not on OS X)"
  return
fi

if ! is-macos -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: curl and/or git)"
  return
fi

# Install Homebrew if required
if ! is-executable brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed"
fi

# Update and upgrade everything
brew update
brew upgrade

# Install packages
apps=(
  bash-completion@2
  coreutils
  dockutil
  eralchemy
  fasd
  git
  git-extras
  gnu-sed
  grep
  go
  imagemagick
  jq
  mackup
  macvim
  pyenv
  pyenv-virtualenv
  shellcheck
  tree
  wifi-password
  tmux
  btop
)

brew install "${apps[@]}"

# Export Brew-specific configuration to cache
export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

# Export macOS specific configurations
ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
