set nocompatible

command! -nargs=+ NewGrep execute 'silent grep! <args>' | copen 4 | redraw!

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fugitive.vim'
Plugin 'The-NERD-Tree'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
Plugin 'jellybeans.vim'
Plugin 'morhetz/gruvbox'
if executable('ag')
	Plugin 'rking/ag.vim'
endif
call vundle#end()

filetype plugin indent on

" NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
map <F8> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
			\ 'file': '\.so$\|\.dat$|\.DS_Store$'
			\ }
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
	let g:ctrlp_use_caching = 0
endif

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
nnoremap <space> za

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

" Key bindings
imap <F12> <ESC>ggVG=``zzi
map <F12> ggVG=``zz

imap <F9> <ESC>:qa!<CR>
map <F9> <ESC>:qa!<CR>

map <F3> :execute " grep -srnw --binary-files=without-match --exclude-dir=.git --exclude-from=exclude.list . -e " . expand("<cword>") . " " <bar> cwindow<CR>


" Rebind <Leader> Key
let mapleader=','

map <Leader>r <esc>:source $HOME/.vim/vimrc<CR>
map <Leader>c <esc>:tabnew<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>q <esc>:q<CR>
map <Tab> <C-w>w
map <Leader><Tab> <esc>:vs<CR><C-w>w
map <Leader>g <esc>:NewGrep 

" Better Indentation
vnoremap > >gv 
vnoremap < <gv

" Better Moving
inoremap jk <ESC>
inoremap jj <ESC>gj
inoremap kk <ESC>gk
nmap j gj
nmap k gk
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <M-b> <S-Left>
inoremap <M-f> <Right>
inoremap <C-d> <Delete>

"highlight last inserted text nnoremap gV `[v`]

" Bind nohl
nnoremap <Leader><space> <ESC>:nohlsearch<CR>

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap
map V V

" Typo correction for save and exit
ab Wq wq

" start from the location where you exit
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Colorscheme Settings
set t_Co=256
set t_ut=

set background=dark
"colorscheme jellybeans
colorscheme gruvbox 

hi Search term=reverse ctermbg=Red ctermfg=Black guibg=Yellow guifg=Black
hi CursorColumn term=reverse ctermbg=Black guibg=grey40
hi CursorLine term=none cterm=bold guibg=white
hi Visual guifg=White guibg=LightBlue gui=none cterm=bold ctermbg=DarkGrey

source ~/.vim/clang.vim
