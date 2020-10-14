# .files

These are my dotfiles, there are many like them, but these are mine.

These dotfiles target macOS and Ubuntu and are hand-crafted for my personal usage and comfort. You can use anything you'd like here - but no guarantees they'll suit you as well as they suit me. Check out [the unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/) for more info. My repository is mostly influenced by [Lars Kappert's Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles).

## Install

First prepare macOS (if this is a fresh install of the OS or a new laptop):

```
$ sudo softwareupdate -i -a
$ xcode-select --install
```

(No additional preparation is required on Ubuntu).

Then clone the repository into `~/.dotfiles` and run the install script:

```
$ git clone git@github.com:bbengfort/dotfiles.git ~/.dotfiles
$ source ~/.dotfiles/install.sh
```

The install script essentially creates symlinks from the dotfiles repo to expected configuration locations then runs a series of installation scripts that use [Homebrew](https://brew.sh/) to ensure the correct applications are installed.

On macOS you can restore application and private configuration using Mackup:

```
$ mackup restore
```

This will symlink files from dropbox into their correct configuration locations.

## Organization

The organization of the dotfiles repository has evolved over time, but basically contains the following:

- `bin`: contains dotfile specific utilities
- `etc`: contains configuration files that are linked on install
- `git`: contains git and GitHub configuration files
- `install`: installation scripts for macOS and Ubuntu
- `macos`: contains macOS defaults and configuration
- `runcom`: [run commands](https://en.wikipedia.org/wiki/Run_commands), primary entry point dotfiles.
- `system`: contains sub configurations on a per-system basis
- `ubuntu`: contains Ubuntu defaults and configurations
- `vim`: contains configurations and files for vim

### Tools

This section contains a (possibly not up-to-date) description of the tools installed on each system type. On all systems the following tools are installed and configured:

- [Bash 4 + Completions](https://troymccall.com/better-bash-4--completions-on-osx/): the shell I've chosen is Bash and I'm going all in on it.
- Git + Git-Extras: version control happens with [Git](https://git-scm.com/) and some special sauce is added with [Git-Extras](https://github.com/tj/git-extras).
- [Go](https://golang.org/): systems programming happens with the Go programming language.
- [Fasd](https://github.com/clvv/fasd): quick access to files and directories from POSIX shells.
- [jq](https://stedolan.github.io/jq/): is like sed for JSON data, used to slice, filter, map and transform structured data.
- [ShellCheck](https://github.com/koalaman/shellcheck): a shell script static analysis tool that gives warnings and suggestions for bash/sh shell scripts.
- [Tree](http://mama.indstate.edu/users/ice/tree/): a recursive directory listing command that produces a depth-indented, colored listing of files.
- [ImageMagick](https://www.imagemagick.org/script/index.php): Use ImageMagick to create, edit, compose, or convert bitmap images.

#### macOS

- [Homebrew](https://brew.sh/): package manager to install most macOS tools.
- [Mackup](https://github.com/lra/mackup): uses Dropbox to synchronize keys, secrets, macOS application settings, and private rc files.
- [MacVim](http://macvim-dev.github.io/macvim/): a GUI vim editor for quick file editing from the terminal.
- [pyenv](https://github.com/pyenv/pyenv): lets you easily switch between multiple versions of Python.
- [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv): provides features to manage virtualenvs and conda environments for Python.
- [dockutil](https://github.com/kcrawford/dockutil): manages Mac OS X dock items.
- [coreutils](https://www.gnu.org/software/coreutils/coreutils.html): GNU versions of core utilities.  
- [ERAlchemy](https://github.com/Alexis-benoist/eralchemy): generates Entity Relation (ER) diagrams from databases or from SQLAlchemy models.
- [wifi-password](https://github.com/rauchg/wifi-password): get the currently connected WiFi password quickly from the terminal.
- [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins): useful plugins for making Quick Look more effective
- [macOS Apps](install/cask.sh)

#### Ubuntu

This section is currently a work in progress.

Currently exploring [Gnome → macOS Keyboard Remap](https://github.com/petrstepanov/gnome-macos-remap) to make keybindings a bit easier when switching back and forth.

## Credits/Resources

- [dotfiles community](https://dotfiles.github.io/)
- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Smyck Color Scheme](http://color.smyck.org/)
