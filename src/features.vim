
function! YTC() abort
    execute ':normal! gv"yy'
    call system('xclip -selection clipboard', @y)
endfunction
