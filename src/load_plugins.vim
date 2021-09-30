set encoding=utf-8
scriptencoding utf-8

" Plugins installed with plug *************************

function! Main()
    call LoadPluguins()
endfunction


function! LoadPluguins()
    call plug#begin('~/.vim/plugged')


    "*****************************************************************************
    "" Plug install packages
    "*****************************************************************************
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'thosakwe/vim-flutter'
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-scripts/grep.vim'
    Plug 'vim-scripts/CSApprox'
    Plug 'Raimondi/delimitMate'
    Plug 'majutsushi/tagbar'
    Plug 'dense-analysis/ale'
    Plug 'Yggdroot/indentLine'
    Plug 'editor-bootstrap/vim-bootstrap-updater'
    Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
    Plug 'tomasiser/vim-code-dark'

    if isdirectory('/usr/local/opt/fzf')
      Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
    else
      Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
      Plug 'junegunn/fzf.vim'
    endif
    let g:make = 'gmake'
    if exists('make')
            let g:make = 'make'
    endif
    Plug 'Shougo/vimproc.vim', {'do': g:make}

    "" Vim-Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'

    "" Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    "*****************************************************************************
    "" Custom bundles
    "*****************************************************************************

    " c
    Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
    Plug 'ludwig/split-manpage.vim'


    " elixir
    Plug 'elixir-lang/vim-elixir'
    Plug 'carlosgaldino/elixir-snippets'


    " elm
    "" Elm Bundle
    Plug 'elmcast/elm-vim'


    " erlang
    Plug 'jimenezrick/vimerl'


    " go
    "" Go Lang Bundle
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


    " haskell
    "" Haskell Bundle
    Plug 'eagletmt/neco-ghc'
    Plug 'dag/vim2hs'
    Plug 'pbrisbin/vim-syntax-shakespeare'


    " html
    "" HTML Bundle
    Plug 'hail2u/vim-css3-syntax'
    Plug 'gko/vim-coloresque'
    Plug 'tpope/vim-haml'
    Plug 'mattn/emmet-vim'


    " javascript
    "" Javascript Bundle
    Plug 'jelera/vim-javascript-syntax'


    " lisp
    "" Lisp Bundle
    Plug 'vim-scripts/slimv.vim'


    " lua
    "" Lua Bundle
    Plug 'xolox/vim-lua-ftplugin'
    Plug 'xolox/vim-lua-inspect'


    " ocaml
    "" OCaml Bundle
    Plug 'def-lkb/ocp-indent-vim'


    " perl
    "" Perl Bundle
    Plug 'vim-perl/vim-perl'
    Plug 'c9s/perlomni.vim'


    " php
    "" PHP Bundle
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
    Plug 'stephpy/vim-php-cs-fixer'


    " python
    "" Python Bundle
    Plug 'davidhalter/jedi-vim'
    Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


    " ruby
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-rake'
    Plug 'tpope/vim-projectionist'
    Plug 'thoughtbot/vim-rspec'
    Plug 'ecomba/vim-ruby-refactoring', {'tag': 'main'}


    " rust
    " Vim racer
    Plug 'racer-rust/vim-racer'

    " Rust.vim
    Plug 'rust-lang/rust.vim'

    " Async.vim
    Plug 'prabirshrestha/async.vim'

    " Vim lsp
    Plug 'prabirshrestha/vim-lsp'

    " Asyncomplete.vim
    Plug 'prabirshrestha/asyncomplete.vim'

    " Asyncomplete lsp.vim
    Plug 'prabirshrestha/asyncomplete-lsp.vim'


    " scala
    if has('python')
        " sbt-vim
        Plug 'ktvoelker/sbt-vim'
    endif
    " vim-scala
    Plug 'derekwyatt/vim-scala'


    " svelte
    Plug 'leafOfTree/vim-svelte-plugin'


    " typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'


    " vuejs
    Plug 'posva/vim-vue'
    Plug 'leafOfTree/vim-vue-plugin'

    "" Include user's extra bundle
    if filereadable(expand('~/.vim/local_bundles.vim'))
      source ~/.vim/local_bundles.vim
    endif
    " Themes
    " Plug 'flazz/vim-colorschemes'

    " IDE
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'
    " Query the Mozilla Developer Network documentation without leaving Vim. 
    Plug 'jungomi/vim-mdnquery'
    " vimscript
    Plug 'junegunn/vader.vim'

    Plug 'scrooloose/nerdcommenter'
    " Colavorative vim in real time (does not work because python)
    "Plug 'FredKSchott/CoVim'
    "
    " HTML and CSS helper
    Plug 'mattn/emmet-vim'
    " To live changes when html, css and javascript -- Not working with css
    " variables
    " Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

    Plug 'JuanDAC/betty-ale-vim'|       "Program
    Plug 'dense-analysis/ale'|          "ALE is a prerequisite

    " test vim
    Plug 'junegunn/vader.vim'

    if has('nvim')
        Plug 'morhetz/gruvbox'
    else
        Plug 'tomasr/molokai'
        Plug 'roxma/vim-paste-easy'
    endif

    call plug#end()
endfunction

call LoadPluguins()
