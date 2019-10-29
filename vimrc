set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'leafgarland/typescript-vim'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'posva/vim-vue'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" use hybrid line numbers
set nu rnu

nmap , <leader>
nmap ,, <leader><leader>
nmap <space> <leader>
nmap <space><space> <leader><leader>

" better j,k
" noremap j gj
" noremap k gk
" noremap gj j
" noremap gk k

" center the cursor
set scrolloff=99

" turn numbers on and off
set number
map <silent> <LocalLeader>nu :set invnumber<CR>

" nerd tree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
let NERDTreeShowLineNumbers=1

" command-p
map <silent> <LocalLeader>t :CtrlP<CR>
map <silent> <LocalLeader>b :CtrlPBuffer<CR>

" ack grep
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

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

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

nnoremap <Leader>v :lfirst<CR>

" set list
" set listchars=tab:→\ ,nbsp:␣

" syntax highlighting and colorschemes
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

syntax on
colorscheme termschool
" highlight Normal ctermbg=None
" hi Search ctermbg=045
" hi visual term=reverse ctermbg=white
