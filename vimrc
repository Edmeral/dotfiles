execute pathogen#infect()
filetype plugin indent on
syntax on
color solarized
set background=dark
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set number
set laststatus=2 " Always display a status bar (for vim-airline)
"""set mouse=a " Mouse support
""" jj instead of hiting <ESC>
inoremap jj <ESC>

" Highlight the current line
set cursorline

""" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

""" Hide trailing spaces warning in vim-airline
let g:airline#extensions#whitespace#enabled = 0

""" Indentation settings
set autoindent
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces

""" Using the TAB key for emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

""" Sytastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""" Disabling syntastic window
let g:syntastic_auto_loc_list = 0

""" Using html syntax highlighting for ejs
au BufNewFile,BufRead *.ejs set filetype=html

""" Using esling for syntastic
let g:syntastic_javascript_checkers = ['eslint']

""" Using jsx synatx highlighting in all .js files
let g:jsx_ext_required = 0

""" Expanding CR and space
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

""" ignoring certain files in ctrP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
