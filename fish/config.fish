if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    set -x PAGER less
    set -x EDITOR vim
    set -x VISUAL vim
    fish_add_path ~/.local/bin

    # safely get columns
    set cols (tput cols 2>/dev/null; or echo 0)

    if type -q pfetch
        pfetch
    # bazzite and friends motd, but only if we're wide enough
    else if type -q /usr/libexec/ublue-motd; and test $cols -ge 80
        /usr/libexec/ublue-motd
    end
end
