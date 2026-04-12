function fish_prompt --description 'Write out the prompt'

    # replace PWD with ~ if in home
    set -l cwd (pwd)
    if test $cwd = $HOME
        set custom_cwd "~"
    else
        set custom_cwd (basename $cwd)
    end
    # change color if on ssh
    if set -q SSH_CONNECTION
        set remote_color purple
    else
        set remote_color blue
    end
    echo -n -s (set_color $remote_color) \ue0b6 (set_color normal -b $remote_color) " " (whoami) " " (set_color $remote_color -b green) \ue0b8 (set_color normal -b green) " " $custom_cwd (fish_vcs_prompt) " " (set_color green -b normal) \ue0b8 " "
end
