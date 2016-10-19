""" INITIALIZE PACKAGE MANAGER
" Setup Vimium (package manager in ~/.vim/)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" VIM PLUGGINS
Plugin 'VundleVim/Vundle.vim'   " Vim package manager
" Plugin 'tpope/vim-fugitive'     " Git wrapper internal to Vim
Plugin 'tpope/vim-commentary'   " gcc -> commented line
Plugin 'vim-airline/vim-airline' " status bar at the bottom
Plugin 'ervandew/supertab'      " Tab completion
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'valloric/youcompleteme' " Code completion suggestions
Plugin 'raimondi/delimitmate'   " Bracket completion with context sensitivity
Plugin 'bronson/vim-trailing-whitespace' " Highlight trailing whtspc in red

""" END PACKAGE MANAGER
call vundle#end()
filetype plugin indent on

""" VIM SETTINGS
:syntax on
:imap jj <esc>
:imap jk <esc>:w<CR>
:imap <C-j> @q
:set number 
:set relativenumber 
:set tabstop=8 expandtab shiftwidth=4 softtabstop=4
:set backspace=2
:set autoindent
:set colorcolumn=80
:set textwidth=80
:highlight ColorColumn ctermbg=0 guibg=lightgrey
:set wildmenu
