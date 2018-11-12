set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'embear/vim-localvimrc'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'chr4/nginx.vim'

call vundle#end()

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:UltiSnipsExpandTrigger='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-n>'
let g:UltiSnipsJumpBackwardTrigger='<c-p>'

set pastetoggle=<F2>

set directory^=~/.vim/swp
set backupdir^=~/.vim/bak

syntax on
set hidden
set showcmd
set autoread
set backspace=2
set laststatus=2
set noshowmode
set number
set nowrap
set ignorecase smartcase incsearch
set expandtab shiftwidth=2 tabstop=2
filetype plugin indent on
