function fish_prompt --description 'Write out the prompt'

    # replace PWD with ~ if in home
    if test (pwd) = $HOME
        set cwd "~"
    else
        set cwd (basename (pwd))
    end
    # change color if on ssh
    if set -q SSH_CONNECTION
        set remote_color purple
    else
        set remote_color blue
    end
    echo -n -s (set_color $remote_color) \ue0b6 (set_color normal -b $remote_color) " " (whoami) " " (set_color $remote_color -b green) \ue0b8 (set_color normal -b green) " " $cwd (fish_vcs_prompt) " " (set_color green -b normal) \ue0b8 " "
end
