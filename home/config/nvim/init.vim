" Neovim Configuration
" 
" Neovim Configuratino contains almost the same configuration as vim, But
" with plugins and vim-plugged enabled.

set nocompatible				" disable compatibility to old-time vi
set showmatch					" show matching
set nu relativenumber			" add line numbers and relative line number
set tabstop=4					" number of columns occupied by a tab
set softtabstop=4				" see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4				" width for autoindents
set mouse=a						" enable mouse click
set clipboard=unnamedplus		" using system clipboard
set cursorline					" highlight current cursorline
set smartindent					
set expandtab

set hlsearch					" highlight search
set incsearch					" incremental search

set noswapfile					" disable creating swapfile
set nobackup					" disable backups
set undofile	 	 		 	" use undofile	
set undodir=~/.cache/nvim		" set undodir directory

set wrap						" enable word wrap
set smartcase

filetype plugin indent on

"" TAB MANAGEMENT
map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext<cr>
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

"" PLUGIN SECTION

call plug#begin()
	Plug 'scrooloose/nerdtree'
"	Plug 'perservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-fugitive'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mattn/emmet-vim'
"   Plug 'govim/govim'
call plug#end()

"" EXTRAS

autocmd VimEnter * NERDTree

" Exit NVIM if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

