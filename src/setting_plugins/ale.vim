
let g:ale_javascript_standard_executable = '/usr/bin/semistandard'
let g:ale_javascript_standard_use_global = 1
let g:ale_css_stylelint_executable = '~/.nvm/versions/node/v14.17.5/bin/stylelint'
let g:ale_fix_on_save = 0
let g:ale_linters = {
\   'c':['betty-style', 'betty-doc', 'gcc'],
\   'vim':['ale_custom_linting_rules', 'vint'],
\   'css': ['stylelint'],
\   'sh': ['shellcheck'],
\   'bash': ['shellcheck'],
\   'bats': ['shellcheck']
\}

