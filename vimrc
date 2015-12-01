execute pathogen#infect()
filetype plugin indent on
syntax on
set background=dark
colorscheme solarized
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set number

set laststatus=2 " Always display a status bar (for vim-airline)

inoremap jj <ESC> " jj instead of <ESC> for faster switching between modes
set cursorline " Highlight the current line

""" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

""" Hide trailing spaces warning in vim-airline
let g:airline#extensions#whitespace#enabled = 0

""" Indentation settings
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

