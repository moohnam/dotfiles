" fold
nnoremap <space> za

" Key bindings
imap <F12> <ESC>ggVG=``zzi
map <F12> ggVG=``zz

imap <F9> <ESC>:qa!<CR>
map <F9> <ESC>:qa!<CR>

" Rebind <Leader> Key
let mapleader=','

map <Leader>r <esc>:source $HOME/.vim/vimrc<CR>
map <Leader>c <esc>:tabnew<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>q <esc>:q<CR>
map <Tab> <C-w>w
map <Leader><Tab> <esc>:vs<CR><C-w>w

" Better Indentation
vnoremap > >gv 
vnoremap < <gv

" Better Moving
vnoremap jkl <ESC>
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

