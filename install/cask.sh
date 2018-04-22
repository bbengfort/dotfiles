if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages
apps=(
  adobe-creative-cloud
  arq
  atom
  font-courier-prime
  dropbox
  google-backup-and-sync
  google-chrome
  istat-menus
  iterm2
  postgres
  postico
  signal
  slack
  the-unarchiver
  zotero
)

# Currently not available via cask
# pwsafe
# papership
# trash-me

brew cask install "${apps[@]}"
