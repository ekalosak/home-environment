""" INITIALIZE PACKAGE MANAGER
" Setup Vimium (package manager in ~/.vim/)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" VIM PLUGGINS
Plugin 'VundleVim/Vundle.vim'   " Vim package manager
" Plugin 'tpope/vim-fugitive'     " Git wrapper internal to Vim
" Plugin 'tpope/vim-commentary'   " gcc -> commented line
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline' " status bar at the bottom
" Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'      " Tab completion
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'valloric/youcompleteme' " Code completion suggestions
Plugin 'raimondi/delimitmate'   " Bracket completion with context sensitivity
Plugin 'bronson/vim-trailing-whitespace' " Highlight trailing whtspc in red
Plugin 'vim-scripts/groovyindent' " better indenting

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
":set autoindent
" :set smartindent
:set colorcolumn=80
:set textwidth=80
:highlight ColorColumn ctermbg=0 guibg=lightgrey
:set wildmenu
:set clipboard=unnamed
:set incsearch
:set pastetoggle=<f5>

" following are for powerbar/airline
:set laststatus=2 " Always show statusbar
:set encoding=utf-8 " Necessary to show Unicode glyphs
:set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:airline_theme='solarized'
