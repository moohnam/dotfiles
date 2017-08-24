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
set undofile
set undodir=~/.vim/undo

" Folding
set foldenable
"set foldmethod=indent "Other acceptable values are marker, manual, expr, syntax, diff. Run :help foldmethod to find out what each of those do.
"set foldnestmax=10
"set foldlevelstart=10
set foldmethod=marker
set cino=N-s
match Error /{{{\|}}}/

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
autocmd FileType make setlocal noexpandtab

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" No backup and swap file
set nowritebackup
set noswapfile
