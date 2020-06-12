call plug#begin()

Plug 'sirver/ultisnips'
Plug 'bronson/vim-trailing-whitespace'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

" colorschemes
Plug 'junegunn/seoul256.vim'

call plug#end()

" Tabs and spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" autocmd Filetype scss setlocal noexpandtab
" autocmd Filetype css setlocal noexpandtab

set backspace=2 " make backspace work like most other apps
set nofoldenable " turn off folding
set hidden " prevent unsaved warnings when switching buffers
set autoread " autoload files when they're changed underneath vim

" searching config
set ignorecase " ignore case
set hlsearch " highlight the search terms
set incsearch " search while typing
set nowrapscan " do not wrap to the beginning of the file from the last match

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

" use line numbers
set nu rnu

" use relative line numbers
" set rnu

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
let NERDTreeIgnore=['node_modules']

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

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" clear unwanted whitespace
map <silent> <LocalLeader>w :FixWhitespace<CR>

" markdown
let g:vim_markdown_folding_disabled=1

" Enable jumping to the end of ruby do/end blocks with % key
runtime! macros/matchit.vim

" set list
set listchars=tab:→\ ,nbsp:␣,space:·

" Automatic line wrapping
set textwidth=100

" Linting (there is also further config in ftplugin folder)
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" syntax highlighting and colorschemes
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

syntax on
colorscheme seoul256
set background=dark

" Remove vim background color and just use shell background
highlight Normal ctermbg=None

" Remove background color on line numbers
highlight LineNr ctermbg=None
highlight LineNr ctermfg=240

" Remove background from vertical split in between document and NerdTree
highlight VertSplit cterm=None ctermbg=None ctermfg=240

" hi Search ctermbg=045
" hi visual term=reverse ctermbg=white
