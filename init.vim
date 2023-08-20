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
set nohlsearch
map gr gT
syntax on


" Assign "visual block" mode to C-b instead of C-v
nnoremap <C-n> <C-v>
nnoremap <C-b> <C-v>
vnoremap <C-b> <C-v>

" Assign yanking to "+" register to C-c
nnoremap <C-c> "+y
vnoremap <C-c> "+y

let g:slime_no_mappings = 1
" Assign pasting from "+" register to C-v
nnoremap <C-v> "+p
vnoremap <C-v> "+p
inoremap <C-v> <Esc>"+p

tnoremap <ESC> <C-\><C-n>


let g:slime_target = "neovim"
let g:slime_no_mappings = 1
xmap ,d <Plug>SlimeRegionSend
nmap ,d <Plug>SlimeParagraphSend
nmap ,b :%SlimeSend<cr>
nmap ,c <Plug>SlimeConfig

"wslime stuff
function! WslimeStuff()
  nmap ,r :SlimeSend1 location.reload()<cr>
  nmap ,a Iconsole.assert(<esc>A<space>===<space>)<esc>i
  nmap ,A Iassert(<esc>A)<esc>i
endfunction
autocmd FileType javascript call WslimeStuff()

"python slime stuff
function! PythonStuff()
  nmap ,a Iassert(eq(<esc>A))<esc>hi
  nmap ,A Iassert(<esc>A)<esc>
endfunction
autocmd FileType python call PythonStuff()


nmap <C-space> <Plug>SlimeParagraphSend
nmap <C-g> :%SlimeSend<cr>
imap <C-space> <Esc><Plug>SlimeParagraphSenda

set guicursor=i:block
set signcolumn=yes:1
highlight SignColumn guibg=black


let g:lisp_rainbow=1

let g:python_recommended_style = 0

"set termguicolors
"let g:solarized_termcolors=256
"let g:solarized_old_cursor_style=1
"colorscheme fruchtig


call plug#begin()
Plug 'jelera/vim-javascript-syntax'
Plug 'wookayin/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'jpalardy/vim-slime'
Plug 'vim-scripts/paredit.vim'
Plug 'puremourning/vimspector'
call plug#end()

