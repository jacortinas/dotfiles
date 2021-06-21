call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'
Plug 'rakr/vim-one'

call plug#end()

" Add the rest of your vim settings here
filetype plugin indent on

syntax on

set autoindent
set backupcopy=yes
set backspace=indent,eol,start
set colorcolumn=100
set nocursorline
set diffopt+=vertical
set fillchars+=vert:\|
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set matchtime=0
set nobackup
set noerrorbells
set nohidden
set nostartofline
set number
set noshowcmd
set noswapfile
set nowrap
set ruler
set scrolloff=5
set shortmess=fmnrWIcF
set showmatch
set smartcase
set smartindent
set smarttab
set synmaxcol=180
set splitbelow
set splitright
set tags=.git/tags
set undolevels=500
set wildignorecase
set wildmenu
" set shell=/bin/zsh

set t_ZH=[3m
set t_ZR=[23m

set expandtab
set shiftwidth=2

set clipboard=unnamed

filetype indent on
filetype plugin on

if has('mouse')
  set mouse=a
endif

if exists("+undofile")
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif

  set undofile
  set undodir=~/.vim/undo/
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=light

colorscheme one

let mapleader = ";"

" Turn off some annoying mappings
noremap Q <Nop>
noremap K <Nop>

" Save
nnoremap <leader>w :update<cr>

" Disable CTRL-A on tmux or on screen
if $TERM =~ 'screen'
  nnoremap <C-a> <nop>
  nnoremap <Leader><C-a> <C-a>
endif

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

" Yank and paste with OS clipboard
noremap <Leader>y "*y
noremap <Leader>p "*
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Jump list (to newer position)
nnoremap <C-p> <C-i>

set foldlevelstart=4

nnoremap <CR> za
vnoremap <CR> za

nnoremap <Leader><Leader> <C-^>

let g:netrw_dirhistmax = 0
let g:netrw_liststyle = 4
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_vcs_root = 1
let g:one_allow_italics = 1
