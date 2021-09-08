
"let g:ale_javascript_standard_executable = '/usr/bin/semistandard'
"let g:ale_javascript_standard_use_global = 1
let g:ale_css_stylelint_executable = '~/.nvm/versions/node/v14.17.5/bin/stylelint'
let g:ale_fix_on_save = 0
let g:ale_linters = {}
function AleFilesJS() abort
    let g:ale_linters.javascript = ['eslint', 'tsserver']
endfunction

if has('autocmd')
    augroup events
        " autocmd FileReadPost *.js echo 'expand("%:p:h")'
        " autocmd BufRead *.js echo 'expand("%:p:h")'
        autocmd!
        au BufRead *.js call AleFilesJS()
    augroup END
endif

let g:ale_linters = {
\   'c':['betty-style', 'betty-doc', 'gcc'],
\   'asm':['gcc'],
\   'vim':['ale_custom_linting_rules', 'vint'],
\   'css': ['stylelint'],
\   'sh': ['shellcheck'],
\   'bash': ['shellcheck'],
\   'go': ['golint', 'go vet'],
\   'python': ['flake8'],
\   'ocaml': ['merlin'],
\   'bats': ['shellcheck']
\}

