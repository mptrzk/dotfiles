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


"vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
"inoremap <C-V> <Esc>:r !xsel -b<CR>a
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
