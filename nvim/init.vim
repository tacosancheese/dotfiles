let mapleader=" "

" plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
call plug#end()

set autoindent
set ignorecase
set number
set nowrap
set title
set relativenumber
set ruler
set scrolloff=3 " Keep 3 lines below and above the cursor

" disable arrow key iour: vim, see https://goo.gl/s1yfh4.
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" see https://stackoverflow.com/a/1346777/6064933
nnoremap - $l

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeHijackNetrw=0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

