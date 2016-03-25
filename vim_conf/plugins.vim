" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fugitive.vim'
Plugin 'The-NERD-Tree'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
"Plugin 'Valloric/YouCompleteMe'
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
