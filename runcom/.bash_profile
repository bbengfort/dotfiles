# if running bash include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	     . "$HOME/.bashrc"
    fi
fi

# Resolve DOTFILES_DIR (assuming ~/.dotfiles without readlink or $BASH_SOURCE/$0)
READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

# Add dotfiles utilities to $PATH
PATH="$DOTFILES_DIR/bin:$PATH"

# Read cache
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
[ -f "$DOTFILES_CACHE" ] && . "$DOTFILES_CACHE"

# Source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,completion,grep,prompt}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Source macos dotfiles (order matters)
if is-macos; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias}.macos; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# Source ubuntu dotfiles (order matters)
if is-linux; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias}.linux; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# Hook for extra/secure stuff
DOTFILES_EXTRA_DIR="$HOME/.extra"

if [ -d "$DOTFILES_EXTRA_DIR" ]; then
  for EXTRAFILE in "$DOTFILES_EXTRA_DIR"/runcom/*.sh; do
    [ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
  done
fi

# Clean up
unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE EXTRAFILE

# Export
export DOTFILES_DIR DOTFILES_EXTRA_DIR

