" Basic Vim Configuration
"
" Vim is now setup as a standard plain text editor without plugins.

set nocompatible                " disable compatibility to old time vi
set showmatch                   " show matching
set number relativenumber       " add line numbers and relative ling number
set tabstop=4                   " number of columns occupied by a tab
set softtabstop=4               " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4                " width for autoindents
set mouse=a                     " enable moouse click
set clipboard=unnamedplus       " use system clipboard
set cursorline                  " highlight current cursor line
set smartindent
set expandtab

set hlsearch                    " highlight search
set incsearch                   " incremental search

set noswapfile                  " disable creating swapfile
set nobackup                    " don't make backups
set undofile                    " use undofile
set undodir=~/.cache/vim        " set undodir directory

set wrap                        " enable word wrap
set smartcase
set wildmode=longest,list,full
set colorcolumn=80
set encoding=UTF_8

highlight ColorColumn ctermbg=0 guibg=lightgrey
