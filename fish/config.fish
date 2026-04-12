if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    set -x PAGER less
    fish_add_path ~/.local/bin
    if type -q pfetch
        pfetch
    end
end
