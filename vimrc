set encoding=utf-8
scriptencoding utf-8

if &compatible
    set nocompatible
endif

set fileformat=unix
set fileformats=unix,dos,mac
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop<
set softtabstop=4
set smarttab

set autoread
set autowrite

set ignorecase
set smartcase
set hlsearch
set incsearch

set wildmenu
set wildmode=list:longest,full

set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=75


" disable automaically insert comment
setl formatoptions-=ro | setl formatoptions+=mMBl

" release autogroup in Myautocmd
augroup MyAutoCmd
    autocmd!
augroup END

" Restore Position:
" When open a file, move the cursor to last position.
autocmd MyAutoCmd BufReadPost *
            \ if line("'\'") > 0 && line("'\'") <= line("$") | 
            \   exe "normal g`\"" | 
            \ endif

if has('persistent_undo')
    set undodir=~/.cache/vim/undo
    set undofile
endif

let mapleader = "\<Space>"

nnoremap ; :
nnoremap : ;

inoremap jj <ESC>
inoremap j<Space> j

nnoremap > >>
nnoremap < <<
xnoremap > >gv
xnoremap < <gv

" emacs bind on insert mode
inoremap <C-h> <BS>
inoremap <C-b> <LEFT>
inoremap <C-l> <RIGHT>
inoremap <C-f> <RIGHT>
inoremap <C-a> <HOME>
inoremap <C-e> <END>
inoremap <C-d> <DELETE>

" Window:
nnoremap s <Nop>
" split
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>
nnoremap st :tabnew<CR>
nnoremap sp :tabnext<CR>
" nnoremap <C-l> :tabnext<CR>
nnoremap sn :tabprevious<CR>
" nnoremap <C-h> :tabprevious<CR>
nnoremap sw :tabclose<CR>

inoremap {{ {}<LEFT>
inoremap [[ []<LEFT>
inoremap (( ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap %% %%<LEFT>

" Commandline:
cnoremap <C-n> <DOWN>
cnoremap <C-p> <UP>
cnoremap <C-b> <LEFT>
cnoremap <C-f> <RIGHT>
cnoremap <C-h> <BS>
cnoremap <C-d> <DELETE>
cnoremap <C-a> <HOME>
cnoremap <C-e> <END>

nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

filetype plugin indent on
