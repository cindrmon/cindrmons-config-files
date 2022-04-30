" Current Plugins installed

call plug#begin()
	" Currently active
    Plug 'nvim-lua/plenary.nvim'                         " Extra Lua functions
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	Plug 'kyazdani42/nvim-web-devicons'                  " Icons
	Plug 'romgrk/barbar.nvim'                            " Tab bar
    Plug 'nvim-lualine/lualine.nvim'                     " Statusline
	Plug 'mhinz/vim-startify'							 " start screen
	Plug 'tpope/vim-fugitive'							 " git commands
	Plug 'mattn/emmet-vim'								 " HTML Emmet commands
	Plug 'andweeb/presence.nvim'						 " Discord Rich presence
	Plug 'tpope/Comment.nvim'							 " Ctrl+/ to comment out stuff
    Plug 'norcalli/nvim-colorizer.lua'                   " Render colors present in text
    Plug 'andymass/vim-matchup'                          " Better '%'
    Plug 'yamatsum/nvim-cursorline'                      " Highlight similar stuff
	Plug 'numToStr/FTerm.nvim'							 " Hovering terminal in nvim
	Plug 'booperlv/nvim-gomove'							 " Sublimetext-like line movement
    Plug 'nvim-treesitter/nvim-treesitter' , {'do': ':TSUpdate'} " Better syntax highlighting
	Plug 'lambdalisue/suda.vim'							 " Enable to read and write files with sudo

	" Themes
	Plug 'cocopon/iceberg.vim'							 " Iceberg by cocopon

	" Still needs fixing
"   Plug 'kevinhwang91/rnvimr'							 " Ranger in neovim

	" COQ
	Plug 'neovim/nvim-lspconfig'                         " LSP server configuration
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}            " Tab completion
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " 9k+ snippets
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}       " third party sources
call plug#end()
