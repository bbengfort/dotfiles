# .files

These are my dotfiles, there are many like them, but these are mine.

These dotfiles target macOS and Ubuntu and are hand-crafted for my personal usage and comfort. You can use anything you'd like here - but no guarantees they'll suit you as well as they suit me. Check out [the unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/) for more info. My repository is mostly influenced by [Lars Kappert's Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles).

## Install

First prepare macOS (if this is a fresh install of the OS or a new laptop):

```
$ sudo softwareupdate -i -a
$ xcode-select --install
```

Then clone the repository into `~/.dotfiles` and run the install script:

```
$ git clone git@github.com:bbengfort/dotfiles.git ~/.dotfiles
$ source ~/.dotfiles/install.sh
```

The install script essentially creates symlinks from the dotfiles repo to expected configuration locations.

## Organization

- `git`: contains git and GitHub configuration files
- `macos`: contains macOS defaults and configuration
- `runcom`: [run commands](https://en.wikipedia.org/wiki/Run_commands), primary entry point dotfiles.
- `system`: contains sub configurations on a per-system basis

## Credits/Resources

- [dotfiles community](https://dotfiles.github.io/)
- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Smyck Color Scheme](http://color.smyck.org/)
