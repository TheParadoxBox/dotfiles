if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    set -x PAGER less
    fish_add_path ~/.local/bin
    if type -q pfetch
        pfetch
    else if type -q /usr/libexec/ublue-motd # bazzite and friends motd
        /usr/libexec/ublue-motd
    end
end
