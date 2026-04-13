" change colors if running in tui
" this has to be applied after the built-in syncolor.vim, so it lives here

if !has("gui_running")
    highlight ColorColumn ctermbg=0
    highlight Comment ctermfg=8
endif
