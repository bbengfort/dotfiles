if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Bash 4"
  return
fi

if [ $BASH_VERSINFO == "4" ]; then
    echo "Bash 4 alredy installed"
    return
 fi

brew install bash

grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash
