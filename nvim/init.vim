let mapleader=","

" plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Flutter
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set autoindent
set ignorecase
set number
set nowrap
set title
set relativenumber
set ruler
set scrolloff=3 
set shiftwidth=2
set expandtab
set smartindent
set splitbelow
set splitright

" tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" disable arrow key iour: vim, see https://goo.gl/s1yfh4.
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Theme
colorscheme gruvbox

" NERDTree
map <leader>w :NERDTreeToggle<CR>
let g:NERDTreeHijackNetrw=0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Dart
let g:dart_format_on_save = 1
let g:dart_style_guide = 2

" coc 
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

map <leader>- :CocList commands<CR>

" autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
