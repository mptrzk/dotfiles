set nocompatible
set showcmd
set scrolloff=100
set tabpagemax=100
set tw=150
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set relativenumber
set autoindent
map gr gT
syntax on


" Assign "visual block" mode to C-b instead of C-v
nnoremap <C-b> <C-v>
vnoremap <C-b> <C-v>

" Assign yanking to "+" register to C-c
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" Assign pasting from "+" register to C-v
nnoremap <C-v> "+p
vnoremap <C-v> "+p


inoremap <c-l> λ

let g:slimv_swank_cmd='!urxvt -e sbcl --load "/home/ryj/.vim/slime/start-swank.lisp" &'
let g:slimv_repl_split=4

let g:lisp_rainbow=1
let g:slimv_timeout=1

let g:python_recommended_style = 0

"set termguicolors
"let g:solarized_termcolors=256
"let g:solarized_old_cursor_style=1
"colorscheme fruchtig
