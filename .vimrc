set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-startify'
Plugin 'chriskempson/base16-vim'

call vundle#end()

colorscheme base16-github
set guifont=Inconsolata\ 12

syntax on
set showcmd
set backspace=2
set number ruler
set ignorecase smartcase incsearch
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab
