dotfiles
========

Config files for deployment in Nick's Unix homedirs.


Installation
------------

Run `./install.sh`. Requires bash. All components are optional.


Contents
--------

**Vim**: Customized for readability and usability, as well as pulling the
following plugins:
<!--TODO: Add links to the repos.-->
- goyo
- gruvbox-material
- nerdtree
- vim-airline
- vim-bufferline
- vim-transparent
- vim-polyglot
- vim-sensible

**Fish**: Shows pfetch if it's installed and implements a Powerline-inspired
prompt. Also sets `EDITOR` and `VISUAL` to `vim`, `PAGER` to `less`, adds
`~/.local/bin` to your PATH, and disables Fish's greeting message. If running on
a Universal Blue distro (Bazzite, Aurora, Bluefin, etc.) and `pfetch` is not
installed, it will show the MOTD instead.

**Install pfetch**: If pfetch isn't installed, installs it to `~/.local/bin`.
