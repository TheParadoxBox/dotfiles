#!/bin/bash

config_dir=~/.config

if [ -v XDG_CONFIG_HOME ]; then
    config_dir=$XDG_CONFIG_HOME
fi

printf "Install Vim dotfiles? (Y/n)  > "
read -n1 ans
echo

if [ "${ans,,}" != "n" ]; then
    mkdir -p $config_dir/vim
    cp -r ./vim $config_dir/
    echo Installed!
fi

printf "Install Fish dotfiles? (Y/n)  > "
read -n1 ans
echo

if [ "${ans,,}" != "n" ]; then
    mkdir -p $config_dir/fish
    cp -r ./fish $config_dir/
    echo Installed!
fi

if ! type pfetch >/dev/null 2>&1; then
    echo "pfetch is not installed."
    printf "Install it to ~/.local/bin? Requires wget. (Y/n)  > "
    read -n1 ans
    echo
    if [ "${ans,,}" != "n" ]; then
        wget https://raw.githubusercontent.com/dylanaraps/pfetch/refs/heads/master/pfetch
        mkdir -p ~/.local/bin
        mv ./pfetch ~/.local/bin
        chmod +x ~/.local/bin/pfetch
    fi
fi
