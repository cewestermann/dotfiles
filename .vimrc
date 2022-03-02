set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'NLKNguyen/papercolor-theme'
" required
call vundle#end()           
filetype plugin indent on 

if (has('termguicolors'))
  set termguicolors
endif

syntax enable
set nu

set term=xterm
set t_Co=256

" Sound config
set noerrorbells
set novisualbell
set belloff=all

set ignorecase

set smartcase

" Highlight searches and do incremental search
set hlsearch
set incsearch

set lazyredraw

" For regular expressions
set magic

" Matching brackets
set showmatch

set background=dark

colorscheme PaperColor
" highlight Comment ctermfg=green
let g:python_highlight_all = 1

set encoding=utf8

" Standard file type
set ffs=unix,dos,mac

" No annoying backup / swap files
set nobackup
set nowb
set noswapfile

" Tab / spaces / indents
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap


" Overwrite python.vim
"augroup python
"    autocmd!
"    " Add shiftwidth and/or softtabstop if you want to override those too.
"    autocmd FileType python setlocal noexpandtab tabstop=4
"augroup end


" Movement
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
" 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Tab-management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" tl -> toggle last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Return to last edit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Always show statusline
set laststatus=2


