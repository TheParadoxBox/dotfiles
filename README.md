dotfiles
========

Config files for deployment in Nick's Unix homedirs.


Installation
------------

Run `./install.sh`. Requires bash. All components are optional.


Contents
--------

**Vim**: Sensible defaults for readability and usability, as well as some QoL
tweaks. Works well for text mode or GVim.

**Fish**: Shows pfetch if it's installed and implements a Powerline-inspired
prompt. Also sets `PAGER` to `less`, adds `~/.local/bin` to your PATH, and
disables Fish's greeting message.

**Install pfetch**: If pfetch isn't installed, installs it to `~/.local/bin`.
