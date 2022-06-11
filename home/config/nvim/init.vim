" vim:fileencoding=utf-8:foldmethod=marker
"
" ____  ____  ____  ____  ____  ____  ____  ____  ____ 
"||c ||||i ||||n ||||d ||||r ||||m ||||o ||||n ||||s ||
"||__||||__||||__||||__||||__||||__||||__||||__||||__||
"|/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\|
"
" ____  ____  ____  _________  ____  ____  ____  ____ 
"||z ||||e ||||n ||||       ||||n ||||v ||||i ||||m ||
"||__||||__||||__||||_______||||__||||__||||__||||__||
"|/__\||/__\||/__\||/_______\||/__\||/__\||/__\||/__\|
"
" ____  ____  ____  ____  ____  ____ 
"||c ||||o ||||n ||||f ||||i ||||g ||
"||__||||__||||__||||__||||__||||__||
"|/__\||/__\||/__\||/__\||/__\||/__\|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" STANDARD CONFIGURATION {{{

set nocompatible				" disable compatibility to old-time vi
set showmatch					" show matching bracket
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
set undofile					" undo persistence

set shellcmdflag=-ic			" Make shell interactive

set wrap
set smartcase

set termguicolors				" Required by nvim-colorizer

filetype plugin indent on

" }}}

" PLUGINS {{{

"" IMPORT PLUGINS
source $HOME/.config/nvim/plugins.vim

"" PLUGIN CONFIG FILES
luafile $HOME/.config/nvim/plugin_configs/presence.lua
luafile $HOME/.config/nvim/plugin_configs/rnvimr.lua
luafile $HOME/.config/nvim/plugin_configs/coq.lua
luafile $HOME/.config/nvim/plugin_configs/colorizer.lua
luafile $HOME/.config/nvim/plugin_configs/cursorline.lua
luafile $HOME/.config/nvim/plugin_configs/barbar.lua
luafile $HOME/.config/nvim/plugin_configs/lualine.lua
luafile $HOME/.config/nvim/plugin_configs/fterm.lua
luafile $HOME/.config/nvim/plugin_configs/chadtree.lua
luafile $HOME/.config/nvim/plugin_configs/gomove.lua
luafile $HOME/.config/nvim/plugin_configs/treesitter.lua
luafile $HOME/.config/nvim/plugin_configs/comment.lua
luafile $HOME/.config/nvim/plugin_configs/suda.lua

" }}}

" SET THEME {{{

colorscheme iceberg
autocmd VimEnter * highlight  Normal guibg=NONE ctermbg=NONE " disable backgroud
autocmd VimEnter * highlight! link CursorColumn CursorLine   " same color for cursor line and cursor column

" }}}

" CUSTOM KEYBINDINGS {{{

"" Standard Keybindings
""" Tab Management
	map <leader>tn :tabnew<cr>
	map <leader>t<leader> :tabnext<cr>

"" Plugin Keybindings
""" Suda
	command W		  SudaWrite
	command Q		  q!
	command WQ		  SudaWrite | q

""" Rnvimr
    nnoremap <silent> <A-r>   :RnvimrToggle<CR>

""" BarBar
	nnoremap <silent> <A-t>   :tabnew<CR>			  " make new tab
    nnoremap <silent> <A-l>   :BufferNext<CR>         " previous buffer
    nnoremap <silent> <A-h>   :BufferPrevious<CR>     " next buffer
    nnoremap <silent> <A-L>   :BufferMoveNext<CR>     " move to previous buffer
    nnoremap <silent> <A-H>   :BufferMovePrevious<CR> " move to next buffer
    nnoremap <silent> <A-x>   :BufferClose<CR>        " close current buffer

""" Commenting
    nnoremap <silent> <C-_>   <Plug>(comment_toggle_current_linewise)<CR>
    vnoremap <silent> <C-_>   <Plug>(comment_toggle_blockwise_visual)<CR>
    inoremap <silent> <C-_>   <ESC><Plug>(comment_toggle_current_linewise)<CR>ki

""" CHADTree
    nnoremap <silent> <A-v>   :CHADopen<cr>			  " open CHADTree

""" fterm
    tnoremap <silent> <A-`>   <C-n><CMD>lua require("FTerm").toggle()<CR>
	nnoremap <silent> <A-`>   <CMD>lua require("FTerm").toggle()<CR>

""" GoMove
    nnoremap <silent> <S-h>   <Plug>GoNSMLeft
    nnoremap <silent> <S-j>   <Plug>GoNSMDown
    nnoremap <silent> <S-k>   <Plug>GoNSMUp
    nnoremap <silent> <S-l>   <Plug>GoNSMRight
    
    vnoremap <silent> <S-h>   <Plug>GoVSMLeft
    vnoremap <silent> <S-j>   <Plug>GoVSMDown
    vnoremap <silent> <S-k>   <Plug>GoVSMUp
    vnoremap <silent> <S-l>   <Plug>GoVSMRight
    
    nnoremap <silent> <C-h>   <Plug>GoNSDLeft
    nnoremap <silent> <C-j>   <Plug>GoNSDDown
    nnoremap <silent> <C-k>   <Plug>GoNSDUp
    nnoremap <silent> <C-l>   <Plug>GoNSDRight
    
    vnoremap <silent> <C-h>   <Plug>GoVSDLeft
    vnoremap <silent> <C-j>   <Plug>GoVSDDown
    vnoremap <silent> <C-k>   <Plug>GoVSDUp
    vnoremap <silent> <C-l>   <Plug>GoVSDRight

" }}}

" EXTRA CONFIGURATION {{{

" }}}


