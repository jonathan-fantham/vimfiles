runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2 " make backspace work like most other apps
set hlsearch
set nofoldenable " turn off folding
set hidden " prevent unsaved warnings when switching buffers
set autoread " autoload files when they're changed underneath vim
set ignorecase " ignore case when searching

" always show the file name at the bottom
set laststatus=2
set statusline+=%F

" make splits more natural
set splitbelow
set splitright

" stop vim saving annoying extra files
set nobackup
set noswapfile

nmap , \

" better j,k
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" turn numbers on and off
set number
map <silent> <LocalLeader>nu :set invnumber<CR>

" nerd tree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" command-p
map <silent> <LocalLeader>t :CtrlP<CR>
map <silent> <LocalLeader>b :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = 'reports\/.*$'

" clear unwanted whitespace
map <silent> <LocalLeader>w :FixWhitespace<CR>

" markdown
let g:vim_markdown_folding_disabled=1

map <silent> <LocalLeader>n :bn<CR>
map <silent> <LocalLeader>p :bp<CR>
map <silent> <LocalLeader>d :bd<CR>

colorscheme Tomorrow
highlight Normal ctermbg=None
