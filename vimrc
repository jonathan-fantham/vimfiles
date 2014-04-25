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
set nobackup
set noswapfile
set nofoldenable " turn off folding

nmap , \
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
imap <C-L> <SPACE>=><SPACE>

map <silent> <LocalLeader>n :bn<CR>
map <silent> <LocalLeader>p :bp<CR>
map <silent> <LocalLeader>d :bd<CR>

colorscheme github
