
function! StringSlide(string, begin_index, end_index) abort
    let l:length = len(a:string)
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

function StringIncludes(string, sub_string)
    let l:length = len(a:sub_string)
    let l:i = 0
    if len(a:string) < l:length
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

