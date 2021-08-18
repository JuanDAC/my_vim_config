set encoding=utf-8
scriptencoding utf-8

" Plugins installed with plug *************************

function! Main()
    call LoadPluguins()
    PlugClean -y
    PlugInstall
    :q
endfunction


function! LoadPluguins()
    call plug#begin('~/.vim/plugged')

    " Themes
    Plug 'morhetz/gruvbox'
    " Plug 'flazz/vim-colorschemes'

    " IDE
    Plug 'easymotion/vim-easymotion'
    Plug 'scrooloose/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " vimscript
    Plug 'junegunn/vader.vim'
    "Plug 'roxma/vim-paste-easy'
    Plug 'scrooloose/nerdcommenter'
    " Colavorative vim in real time (does not work because python)
    "Plug 'FredKSchott/CoVim'
    "
    " HTML and CSS helper
    Plug 'mattn/emmet-vim'
    " To live changes when html, css and javascript -- Not working with css
    " variables
    " Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

    Plug 'dense-analysis/ale'
    Plug 'JuanDAC/betty-ale-vim'|       "Program
    Plug 'dense-analysis/ale'|          "ALE is a prerequisite
    Plug 'tomasr/molokai'

    call plug#end()
endfunction

call LoadPluguins()
