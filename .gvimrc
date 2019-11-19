"Window Settings
set columns=160
set lines=50
set guioptions=

"GUI Menu Toggle
function! ToggleGUIMenu()
    if &guioptions=='m'
        exec('set guioptions=')
    else
        exec('set guioptions=m')
    endif
endfunction
map <F11> <Esc>:call ToggleGUIMenu()<cr>
