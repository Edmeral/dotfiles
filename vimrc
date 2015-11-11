execute pathogen#infect()
filetype plugin indent on
syntax on
colorscheme onedark
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set number

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2

inoremap jj <ESC>
set cursorline " Highlight the current line

""" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set autoindent
set shiftwidth=2
set expandtab       " tabs are spaces

""" Using the TAB key for emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

