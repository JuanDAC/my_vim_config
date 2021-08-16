
function! FilesJS() abort
    set tabstop=2
    set shiftwidth=2
    set expandtab
endfunction

function! FilesVim() abort
    set tabstop=4
    set shiftwidth=4
    set expandtab
    let l:current_direction_buffer = expand('%:p')
endfunction

if has('autocmd')
    augroup jsfiles
        " autocmd FileReadPost *.js echo 'expand("%:p:h")'
        " autocmd BufRead *.js echo 'expand("%:p:h")'
        autocmd!
        au BufRead *.js call FilesJS()
        au BufRead *.vim call FilesVim()
        au BufRead .vimrc call FilesVim()
    augroup END
endif
