if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Bash 5 (not on OS X)"
  return
fi

if [ $BASH_VERSINFO == "5" ]; then
    echo "Bash 5 already installed"
    return
 fi

brew install bash

grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash
