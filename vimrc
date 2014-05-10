runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set backspace=2 " make backspace work like most other apps
set hlsearch
set nofoldenable " turn off folding
set hidden " prevent unsaved warnings when switching buffers

" stop vim saving annoying extra files
set nobackup
set noswapfile

nmap , \

" nerd tree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

" command-p
map <silent> <LocalLeader>t :CtrlP<CR>
map <silent> <LocalLeader>b :CtrlPBuffer<CR>

" clear unwanted whitespace
map <silent> <LocalLeader>w :FixWhitespace<CR>

map <silent> <LocalLeader>n :bn<CR>
map <silent> <LocalLeader>p :bp<CR>
map <silent> <LocalLeader>d :bd<CR>

colorscheme github
