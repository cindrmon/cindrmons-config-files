# ZSH Setup Script
#
# Script should be able to setup zsh with oh-my-zsh
#
#!/bin/bash

## 0. stow
cd ~/.owo/stowPackages;
stow -vt $HOME zsh;
cd ~;

## 1. install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

## 2. install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh.custom}/plugins/zsh-autosuggestions

## END
