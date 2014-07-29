if has("gui_running")
"  colorscheme smyck
"  set background=dark
  set guioptions=acg
  set number
  set numberwidth=5
  set lines=63 columns=100
  set listchars=tab:>-,trail:·,eol:$
endif

set guifont=Monaco:h14 
" Spell check for tex files
autocmd FileType tex set spell

" Syntax highlighting
syntax on

" Text width
autocmd FileType tex set textwidth=80

" Backspace
set backspace=indent,eol,start

" Auto format
set formatoptions=tc

" How many tenths of a second to blink when matching brackets
set mat=2

" History
set history=100

" Leader
let mapleader = ";"
let g:mapleader = ";"
nmap <silent> <leader>w :w<cr>
nmap <silent> <leader>q :q<cr>

" Show whitespaces with ,s
nmap <silent> <leader>s :set nolist!<CR>

" Large scrolling
map <C-J> 4j
map <C-K> 4k

" Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Autoindent
set autoindent
set smartindent

" Better auto complete
set wildmenu

" Show mode
set showmode

" Hide mouse when typing
set mousehide

" Show matching brackets when text indicator is over them
set showmatch

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Scrolloff
set scrolloff=8

" Show ruler
set ruler

" Hidden bufers
set hidden

" Set to auto read when a file is changed from the outside
set autoread

"Set magic on, for regular expressions
set magic 

" Always show status line
set laststatus=2

" No backup
set nobackup
set nowritebackup

" No error bells
set noerrorbells
set novisualbell

" buffer mappings
nmap <silent> <leader>l :ls<CR>
nmap <silent> <leader>d :bd<CR>
nmap <silent> <leader>n :bn<CR>
nmap <silent> <leader>p :bp<CR>
nmap <leader>e :edit<Space>
nmap <leader>x :Explore<CR>

" Latex
"nmap <C-p> :w<CR>:!pdflatex %<CR><CR>
autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%'

" Center
nmap <silent> <space> zz

" noh mapping
nmap <silent> <leader>h :noh<CR>

" visual mode copy to clipboard
vmap '' :w !pbcopy<cr><cr>

" Convert HTML to JavaScript string
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>

" eclim settings
filetype plugin indent on
let g:EclimPythonValidate = 1
let g:EclimNailgunClient='external'
let g:EclimJavaHierarchyDefaultAction = "edit"
let g:EclimJavaCallHierarchyDefaultAction = "edit"
let g:EclimJavaSearchContextDefaultAction = "edit"
let g:EclimPythonSearchSingleResult = "edit"
nmap <silent> <leader>1 :JavaSearchContext<CR>
nmap <silent> <leader>2 :PythonSearchContext<CR>
nmap <silent> <leader>3 :JavaCallHierarchy<CR>
nmap <silent> <leader>4 :JavaHierarchy<CR>
nmap <silent> <leader>i :JavaImport<CR>
set nocompatible
"pathogen
"execute pathogen#infect()
