let mapleader=","

" netrw
"let g:netrw_banner=0
"let g:netrw_liststyle=3
"let g:netrw_browse_split=0
"let g:netrw_altv=1
"let g:netrw_winsize=25

" plugins
call plug#begin()

" Common
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Flutter
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Theme
colorscheme gruvbox

set autoindent
set ignorecase
set number
set nowrap
set title
set relativenumber
set ruler
set scrolloff=3
set sidescrolloff=5
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set splitbelow
set splitright
set nobackup
set wildmenu

set foldenable
set foldlevelstart=5
set foldnestmax=5
set foldmethod=indent

" editor

" disable arrow key iour: vim, see https://goo.gl/s1yfh4.
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" buffers
"map <C-K> :bprev<CR>
"map <C-J> :bnext<CR>

"highlight trailing whitespace
match ErrorMsg '\s\+$'

" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

" tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <leader>f :exe "vertical resize " . (winheight(0) * 3/2)<CR>

" windows
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

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

" Remap keys for applying codeAction to the current line.
nmap <leader>ac <Plug>(coc-codeaction)

" Show commands
map <leader>c :CocList commands<CR>

" autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
