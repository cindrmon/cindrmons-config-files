# Neovim Setup Script
#
# <Shell Script Description>
#
#!/bin/bash

# 1. stow
cd ~/.owo/stowPackages
stow -vt $HOME neovim
cd ~

# 2. install plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

