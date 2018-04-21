# Check to ensure we can install Homebrew
if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

# Install Homebrew if required
if ! is-executable brew; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed"
fi

# Update and upgrade everything
brew update
brew upgrade

# Install packages
apps=(
  bash-completion2
  coreutils
  dockutil
  eralchemy
  fasd
  git
  git-extras
  gnu-sed --with-default-names
  grep --with-default-names
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
)

brew install "${apps[@]}"

# Export Brew-specific configuration to cache
export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

# Export macOS specific configurations 
ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
