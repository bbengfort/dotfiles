# Check to ensure we can install Homebrew
if ! is-linux; then
  echo "Skipped: apt-get install"
  return
fi

# Add required third-party repositories
sudo add-apt-repository ppa:aacebedo/fasd

# Update and upgrade everything
sudo apt-get update
sudo apt-get upgrade

# Install packages
apps=(
  build-essential
  fasd
  git-core
  git-extras
  imagemagick
  jq
  shellcheck
  tree
)

sudo apt-get install "${apps[@]}"
