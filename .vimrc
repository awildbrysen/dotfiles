syntax on
set t_Co=256

let mapleader = ","

set cursorline
set laststatus=2
set showcmd
set ruler

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set incsearch
set ignorecase
set smartcase
set showmatch

set autochdir

set so=5

map <leader><leader> :set hlsearch!<CR>

" increase / decrease size of split pane
nnoremap <left> <c-w><
nnoremap <right> <c-w>>
nnoremap <up> <c-w>-
nnoremap <down> <c-w>+
