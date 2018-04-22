#!/bin/sh

# Reset the Dock to preferred configuration
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/FaceTime.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Signal.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/PaperShip.app"
dockutil --no-restart --add "/Applications/Zotero.app"
dockutil --no-restart --add "/Applications/Postico.app"
dockutil --no-restart --add "/Applications/Atom.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/pwSafe.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "~/Downloads"
dockutil --no-restart --add "/Applications"

killall Dock
