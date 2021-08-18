
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

if has('nvim')
    set termguicolors
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_hls_cursor = 'purple'
    colorscheme gruvbox
else
    let g:molokai_original = 1
    let g:rehash256 = 1
    colorscheme molokai
endif

set list listchars=tab:\→\ ,trail:·,eol:¶,extends:§,precedes:§,nbsp:§
