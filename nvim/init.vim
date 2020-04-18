let mapleader=","

" plugins
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
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

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeHijackNetrw=0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Dart
let g:dart_format_on_save = 1
let g:dart_style_guide = 2

let g:lsc_auto_map = {
    \ 'GoToDefinition': '',
    \ 'GoToDefinitionSplit': '<leader>def',
    \ 'FindReferences': '<leader>ref',
    \ 'NextReference': '<leader>refn',
    \ 'PreviousReference': '<leader>refb',
    \ 'FindImplementations': '<leader>imp',
    \ 'FindCodeActions': '<leader>act',
    \ 'Rename': '<leader>rnm',
    \ 'ShowHover': v:true,
    \ 'DocumentSymbol': '',
    \ 'WorkspaceSymbol': '',
    \ 'SignatureHelp': '<leader>sig',
    \ 'Completion': 'completefunc',
    \}
autocmd CompleteDone * silent! pclose
