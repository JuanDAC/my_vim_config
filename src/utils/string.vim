
function! StringSlide(string, begin_index, end_index) abort
    let l:length = strlen(a:string)
    let l:begin_index = a:begin_index
    let l:end_index = a:end_index

    if l:begin_index < 0
        let l:begin_index = a:begin_index + l:length
    endif

    if l:end_index < 0
        let l:end_index = a:end_index + l:length
    endif

    if l:end_index >= l:length
        let l:end_index = l:length - 1
    endif

    if l:begin_index > l:end_index
        let l:temp = l:begin_index
        let l:begin_index = l:end_index
        let l:end_index = l:temp
    endif

    let l:i = l:begin_index
    let l:new_string = []

    while l:i <= l:end_index
        call add(l:new_string, a:string[l:i])
        let l:i += 1
    endwhile

    return join(l:new_string, '')
endfunction

function! StringIncludes(string, sub_string) abort
    let l:length = strlen(a:sub_string)
    let l:i = 0
    if strlen(a:string) < l:length
        return 0
    endif
    while l:i < l:length
        if a:string[l:i] != a:sub_string[l:i]
            break
        endif
        let l:i += 1
    endwhile
    if l:i == l:length
        return 1
    endif
    return StringIncludes(StringSlide(a:string, 1, -1), a:sub_string)
endfunction

function! StringWords(string, ...)abort
    let l:strlen = strlen(a:string)
    let l:words = []
    let l:word = ''
    let l:delimiter = a:0 ? a:0 : ' _-^$".*+?()[]{}|'
    let l:delimiter_len = strlen(l:delimiter)
    let l:i = 0
    let l:j = 0

    while l:i < l:strlen
        let l:is_delimiter = 0
        let l:j = 0
        while l:j < l:delimiter_len
            if a:string[l:i] == l:delimiter[l:j]
                let l:is_delimiter = 1
            endif
            let l:j += 1
        endwhile
        if l:is_delimiter && len(l:word)
            call add(l:words, l:word)
            let l:word = ''
        elseif !l:is_delimiter
            let l:word .= a:string[l:i]
        endif
        let l:i += 1
    endwhile
    call add(l:words, l:word)
    return l:words
endfunction

function! StringUpperFirst(string) abort
  return toupper(a:string[0]) . a:string[1:-1]
endfunction
function! StringLowerFirst(string) abort
  return tolower(a:string[0]) . a:string[1:-1]
endfunction

function! StringCamelCase(string) abort
    function! ToCalmeCase(acumulator, word, index) abort
        let l:word = tolower(a:word)
        if a:index == 0
            return a:acumulator . l:word
        else
            return a:acumulator . StringUpperFirst(l:word)
        endif
    endfunction
    let l:resoult = ''
    let l:index = 0
    for l:value in StringWords(a:string)
        let l:resoult = ToCalmeCase(l:resoult, l:value, l:index)
        let l:index += 1
    endfor
    return l:resoult
endfunction


" echo StringCamelCase('hello__peter hola piter')
" echo StringCamelCase('hello__peter-hola piter')
" echo StringWords('hello__peter_hola piter')

