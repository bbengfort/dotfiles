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

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
# Note these currently break the ql function (https://github.com/toland/qlmarkdown/issues/79)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
