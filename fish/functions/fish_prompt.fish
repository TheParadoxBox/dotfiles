function fish_prompt --description 'Write out the prompt'
    
        # replace PWD with ~ if in home
        set -l cwd (pwd)
        if test $cwd = $HOME
                set custom_cwd "~"
        else
                set custom_cwd (basename $cwd)
        end

        echo -n -s (set_color blue) \ue0b6 (set_color normal -b blue) " " (whoami) " " (set_color blue -b green) \ue0b8 (set_color normal -b green) " " $custom_cwd (fish_vcs_prompt) " " (set_color green -b normal) \ue0b8 " "
end
