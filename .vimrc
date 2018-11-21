" pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
	if (has("nvim"))
	  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
	  set termguicolors
  endif
endif

if exists('+termguicolors')
	let &t_8f = "\<Esc>[28;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[28;2;%lu;%lu;%lum"
	set termguicolors
endif

syntax enable
filetype plugin indent on

set t_ut=
set t_Co=256
set background=dark
colorscheme onedark
set encoding=utf-8
"set tabstop=4
"set softtabstop=4
"set noexpandtab
set number
set showcmd
set cursorline
"highlight Cursorline cterm=bold
set wildmenu
set showmatch
set hlsearch
set ts=4 sw=4
set laststatus=2

set nocompatible
set hidden
set noshowmode

"augroup configgroup
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.pl,*.txt :call <SID>StripTrailingWhitespaces()

" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'onedark'

" Python
let g:pymode = 1
let g:pymode_syntax = 1
let g:pymode_python = 'python3'
let g:pymode_syntax_all = 1
let g:pymode_lint_ignore="E221"
let g:python_highlight_all = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-Space>'

" NERDTree options
" map control+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" close vim if only windows open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
