runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
set synmaxcol=150 " prevent vim running slow on long lines due to syntax highlighting
filetype plugin indent on

" Tabs and spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" autocmd Filetype scss setlocal noexpandtab
" autocmd Filetype css setlocal noexpandtab

set backspace=2 " make backspace work like most other apps
set hlsearch
set incsearch
set nofoldenable " turn off folding
set hidden " prevent unsaved warnings when switching buffers
set autoread " autoload files when they're changed underneath vim

" ignore case when searching
set ignorecase

" always show the file name at the bottom
set laststatus=2
set statusline+=%F

" make splits more natural
set splitbelow
set splitright

" stop vim saving annoying extra files
set nobackup
set noswapfile

" use old regular expression engine for ruby plugin
set re=1

nmap , <leader>
nmap ,, <leader><leader>
nmap <space> <leader>
nmap <space><space> <leader><leader>

" better j,k
noremap j gj
noremap k gk
noremap gj j
noremap gk k

set scrolloff=99

" turn numbers on and off
set number
map <silent> <LocalLeader>nu :set invnumber<CR>

" nerd tree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

" command-p
map <silent> <LocalLeader>t :CtrlP<CR>
map <silent> <LocalLeader>b :CtrlPBuffer<CR>

" ack grep
cnoreabbrev Ack Ack!
" nnoremap <Leader>a :Ack!<Space>

if executable("rg")
  " Use ripgrep instead of grep
  let g:ackprg = 'rg --vimgrep --hidden'

  " Use ripgrep for ctrl p searches
  let g:ctrlp_user_command = 'rg --vimgrep --hidden --files %s'
endif

" vim-go
map <silent> <LocalLeader>gt :GoTest<CR>
map <silent> <LocalLeader>gc :GoCoverage<CR>

if executable("goimports")
  let g:go_fmt_command = "goimports"
endif

" clear unwanted whitespace
map <silent> <LocalLeader>w :FixWhitespace<CR>

" markdown
let g:vim_markdown_folding_disabled=1

" Enable jumping to the end of ruby do/end blocks with % key
runtime! macros/matchit.vim

" set background=dark
colorscheme Tomorrow
" highlight Normal ctermbg=None
" hi Search ctermbg=045
" hi visual term=reverse ctermbg=white

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
