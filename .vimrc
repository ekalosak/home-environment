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
Plugin 'tomtom/tcomment_vim' " gcc -> commented
Plugin 'vim-airline/vim-airline' " status bar at the bottom
" Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'      " Tab completion
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " HTML completion of tags
" Plugin 'valloric/youcompleteme' " Code completion suggestions
Plugin 'raimondi/delimitmate'   " Bracket completion with context sensitivity
Plugin 'bronson/vim-trailing-whitespace' " Highlight trailing whtspc in red
Plugin 'vim-scripts/groovyindent' " better indenting
Plugin 'jpalardy/vim-slime' " send lines/chunks to IDE using C-c C-c
Plugin 'kien/rainbow_parentheses.vim' " highlight parentheses
Plugin 'scrooloose/nerdtree' " file browser

""" END PACKAGE MANAGER
call vundle#end()
filetype plugin indent on

""" VIM SETTINGS

:au VimEnter * RainbowParenthesesToggle

let g:slime_target = "tmux" " configure vim-slime for tmux

:syntax on

" slime send selection to panel commands
:nmap gl <Plug>SlimeLineSend
:xmap gs <Plug>SlimeRegionSend
:nmap gs <Plug>SlimeParagraphSend
" :nmap gs <Plug>SlimeLineSend
:nmap gr <Plug>SlimeConfig
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1

:imap jj <esc>
:imap jk <esc>:w<CR>
:set relativenumber
:set number
" :set tabstop=8 expandtab shiftwidth=4 softtabstop=4
:set tabstop=2 shiftwidth=2 expandtab
:set backspace=2
" :set autoindent
" :set smartindent
:set colorcolumn=80
:set textwidth=80
:highlight ColorColumn ctermbg=0 guibg=lightgrey
:set wildmenu
" :set mouse=a

:autocmd FileType hs setlocal shiftwidth=2 tabstop=2

:set clipboard=unnamed
:set incsearch
:set pastetoggle=<f5>

" remap increment/decrement to use alt key so GNUscreen shortcut overload is ok
:nnoremap gi <C-a>
:nnoremap gd <C-x>

" following are for powerbar/airline
:set laststatus=2 " Always show statusbar
:set encoding=utf-8 " Necessary to show Unicode glyphs
:set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:airline_theme='solarized'
" let g:airline_theme='molokai'

" change comment color
" :hi Comment guifg=LightBlue

:au Syntax * RainbowParenthesesLoadRound
:au Syntax * RainbowParenthesesLoadSquare
:au Syntax * RainbowParenthesesLoadBraces

" tab mapping
:nnoremap <C-j> :tabprevious<CR>
:nnoremap <C-k> :tabnext<CR>
nnoremap <silent> <C-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-l> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
" command 'te' -> 'tabedit'
:cnoreabbrev te tabedit

" buffers
" set switchbuf=usetab
