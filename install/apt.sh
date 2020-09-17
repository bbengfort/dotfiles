# Check to ensure we can install Homebrew
if ! is-linux; then
  echo "Skipped: apt install"
  return
fi

# Add required third-party repositories
sudo add-apt-repository ppa:aacebedo/fasd

# Update and upgrade everything
sudo apt update
sudo apt upgrade

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
  curl
)

sudo apt install "${apps[@]}"
