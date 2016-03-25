" Settings
syntax on
set backspace=indent,eol,start
set esckeys
set magic
set wildmenu
set lazyredraw " redraw only when we need to
set showmatch
set si
set ai
set ws
set showmode
set ruler
set history=1000
set cursorline
set number
set laststatus=2
set undofile
set undodir=~/.vim/undo

" Folding
set foldenable
set foldmethod=indent "Other acceptable values are marker, manual, expr, syntax, diff. Run :help foldmethod to find out what each of those do.
set foldnestmax=10
set foldlevelstart=10

" Tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
"set expandtab

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" No backup and swap file
set nowritebackup
set noswapfile
