# Getting started with Tmux

If Tmux isn't installed, on OS X:

    $ brew install tmux

On Ubuntu:

    $ sudo apt install tmux

Starting a session:

    $ tmux new -s session_name

Getting commands:

    Ctrl+b ?

Detaching:

    Ctrl+b d

Reattaching:

    $ tmux ls
    $ tmux attach -t session_name

Windows and panes:

- `Ctrl+b c` Create a new window (with shell)
- `Ctrl+b w` Choose window from a list
- `Ctrl+b 0` Switch to window 0 (by number )
- `Ctrl+b ,` Rename the current window
- `Ctrl+b %` Split current pane horizontally into two panes
- `Ctrl+b "` Split current pane vertically into two panes
- `Ctrl+b o` Go to the next pane
- `Ctrl+b ;` Toggle between the current and previous pane
- `Ctrl+b x` Close the current pane