" pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

syntax enable
filetype plugin indent on

set t_ut=
set t_Co=256
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" Colors
colorscheme onehalfdark
"set background=dark

" Useful
set encoding=utf-8
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set hlsearch
set ts=4 sw=4
set laststatus=2
set nocompatible
set hidden
set noshowmode
set updatetime=100

" Remap <Leader>
let mapleader = ","

" Key bindings
map <Leader>s :FZF <CR>

" Swap background quickly
"map <Leader>l :set background=light <CR>
"map <Leader>d :set background=dark <CR>
map <Leader>l :colorscheme onehalflight <CR>
map <Leader>d :colorscheme onehalfdark <CR>

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>

" .S extension defaults to AT&T syntax
autocmd BufNewFile,BufRead *.S set syntax=gas

" .c extension defaults to c syntax
autocmd BufNewFile,BufRead *.c set syntax=c

" Change the cursor to a thin bar in insert mode
if has("autocmd")
	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
	au InsertEnter,InsertChange *
				\ if v:insertmode == 'i' | 
				\   silent execute '!echo -ne "\e[6 q"' | redraw! |
				\ elseif v:insertmode == 'r' |
				\   silent execute '!echo -ne "\e[4 q"' | redraw! |
				\ endif
	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Mappings to access buffers
" ,b ,f ,g : go back/forward/last-used
" ,1 ,2 ,3 : go to buffer 1/2/3 etc
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"-----------------------------------------------------"
" NERDTree options
" map control+n to open NERDTree
"map <C-n> :NERDTreeToggle<CR>
" close vim if only windows open is NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

