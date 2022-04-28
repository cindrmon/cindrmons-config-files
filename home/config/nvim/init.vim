set nocompatible				" disable compatibility to old-time vi
set showmatch					" show matching
set nu relativenumber			" add line numbers and relative line number
set tabstop=4					" number of columns occupied by a tab
set softtabstop=4				" see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4				" width for autoindents
set autoindent					" indent a new line the same amount as the line just typed
set mouse=a						" enable mouse click
set clipboard=unnamedplus		" using system clipboard
set cursorline					" Highlight current line
set cursorcolumn				" Highlight current column

set hlsearch					" highlight search
set incsearch					" incremental search

set noswapfile					" disable creating swapfile
set backupdir=~/.cache/nvim		" directory to store backup files

set shellcmdflag=-ic			" Make shell interactive

set wrap
set smartcase

set termguicolors				" Required by nvim-colorizer

filetype plugin indent on
"" PLUGIN SECTION

source $HOME/.config/nvim/plugins.vim

"" LUA CONFIGS
luafile $HOME/.config/nvim/lua_configs/presence.lua
luafile $HOME/.config/nvim/lua_configs/rnvimr.lua
luafile $HOME/.config/nvim/lua_configs/coq.lua
luafile $HOME/.config/nvim/lua_configs/colorizer.lua
luafile $HOME/.config/nvim/lua_configs/cursorline.lua
luafile $HOME/.config/nvim/lua_configs/barbar.lua
luafile $HOME/.config/nvim/lua_configs/lualine.lua
luafile $HOME/.config/nvim/lua_configs/fterm.lua
luafile $HOME/.config/nvim/lua_configs/chadtree.lua

"" CUSTOM KEYBINDINGS

  " Standard Keybindings

	" Replace stuff like :W to :w
		cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W')) 
		cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('W'))
		cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq !sudo tee %'):('W'))

	" Tab Management
		map <leader>tn :tabnew<cr>
		map <leader>t<leader> :tabnext<cr>


  " Rnvimr
    nnoremap <silent> <A-r>   :RnvimrToggle<CR>

  " BarBar
	nnoremap <silent> <A-t>   :tabnew<CR>			  " make new tab
    nnoremap <silent> <A-l>   :BufferNext<CR>         " previous buffer
    nnoremap <silent> <A-h>   :BufferPrevious<CR>     " next buffer
    nnoremap <silent> <A-L>   :BufferMoveNext<CR>     " move to previous buffer
    nnoremap <silent> <A-H>   :BufferMovePrevious<CR> " move to next buffer
    nnoremap <silent> <A-x>   :BufferClose<CR>        " close current buffer

  " Commenting
    nnoremap <silent> <C-_>   :Commentary<CR>j
    vnoremap <silent> <C-_>   :Commentary<CR>
    inoremap <silent> <C-_>   <ESC>:Commentary<CR>a

  " CHADTree
    nnoremap <silent> <A-v>   :CHADopen<cr>			  " open CHADTree

  " fterm
    tnoremap <silent> <A-`>   <C-n><CMD>lua require("FTerm").toggle()<CR>
    nnoremap <silent> <A-`>   <CMD>lua require("FTerm").toggle()<CR>

" EXTRA CONFIGURATION


