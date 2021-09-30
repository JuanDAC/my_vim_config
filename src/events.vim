
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


function! FilesDart() abort
    nnoremap <leader>fa :FlutterRun<cr>
    nnoremap <leader>fq :FlutterQuit<cr>
    nnoremap <leader>fr :FlutterHotReload<cr>
    nnoremap <leader>fR :FlutterHotRestart<cr>
    nnoremap <leader>fD :FlutterVisualDebug<cr>
endfunction

if has('autocmd')
    augroup events
        " autocmd FileReadPost *.js echo 'expand("%:p:h")'
        " autocmd BufRead *.js echo 'expand("%:p:h")'
        autocmd!
        au BufRead *.js call FilesJS()
        au BufRead *.vim call FilesVim()
        au BufRead .vimrc call FilesVim()
        au BufRead .vimrc call FilesDart()
    augroup END
endif
