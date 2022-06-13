# vim:fileencoding=utf-8:foldmethod=marker

########################################################################
########################################################################
#     ____ ____ ____ ____ ____ ____ ____ ____ ____ 
#    ||c |||i |||n |||d |||r |||m |||o |||n |||s ||
#    ||__|||__|||__|||__|||__|||__|||__|||__|||__||
#    |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
#
#       ____ ____ ____ _________ ____ ____ ____ 
#      ||z |||e |||n |||       |||z |||s |||h ||
#      ||__|||__|||__|||_______|||__|||__|||__||
#      |/__\|/__\|/__\|/_______\|/__\|/__\|/__\|
#
#           ____ ____ ____ ____ ____ ____ 
#          ||c |||o |||n |||f |||i |||g ||
#          ||__|||__|||__|||__|||__|||__||
#          |/__\|/__\|/__\|/__\|/__\|/__\|
#
########################################################################
########################################################################

# Officially Modified zsh config designed for my convenience.
# Switching completely to bend ghrough my own will and such.
# No more complicated jargon from the generated config file.
# Recreated from the original generated config, with slight adjustments.
# ASCII art and colored intellicode best viewed in a vim editor.
# Now with vim collapsible Sections!

########################################################################
#:  000. Oh My Zsh Configuration {{{
########################################################################

## NOTE: this zshrc file must have omz installed.

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Current Theme
ZSH_THEME="candy-24h"
# ZSH_THEME="candy"     # fallback
# ZSH_THEME="random"

# Specify if you want specific random themes
ZSH_THEME_RANDOM_CANDIDATES=( "candy-24h" "agnoster" )    # 

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
    yarn
    node
    vscode
    web-search
    zsh-autosuggestions         # install zsh-autosuggestions first
 )

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

## }}} #################################################################
########################################################################

########################################################################
#: 001. Environment Variables {{{
########################################################################

########################################################################
#: 001a. Global Variables {{{
########################################################################

# Default Editor
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi
export EDITOR='nvim'

# dotOwO -- cindrmons-config-files
export OWO="$HOME/.owo"

## }}} #################################################################
########################################################################

########################################################################
#: 001b. XDG Variables {{{
########################################################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

## }}} #################################################################
########################################################################

########################################################################
#: 001c. Program-Specific Configuration {{{
########################################################################

# Deno
# export DENO_DIR="$HOME/.local/share/deno"
# export PATH="$PATH:/home/cinder/.local/share/deno/bin"

# Ruby
# eval "$(rbenv init -)"
# export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

# Go
export GOPATH=$HOME/.local/share/go

# Rust
unset rc
. "$XDG_DATA_HOME/cargo/env"

# Flutter
# export CHROME_EXECUTABLE="/usr/bin/brave-browser"

# GPG
export GPG_TTY=$(tty)
export GNUPGHOME=$HOME/.gnupg

## }}} #################################################################
########################################################################

########################################################################
#: 001x. Updated PATH Variables {{{
########################################################################

# Local Scripts
export PATH="$PATH:$HOME/Scripts:$HOME/Binaries/Scripts"

# Local Binary Directories
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# Yarn
export PATH="$PATH:$(yarn global bin)"		# must set global bin config first

# Ruby
export PATH="$PATH:$HOME/.local/share/rbenv/bin"
export PATH="$PATH:$HOME/.local/share/rbenv/plugins/ruby-build/bin"
# export PATH="$PATH:$GEM_HOME/bin"

# Go
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$PATH:$HOME/.local/share/cargo/bin"

# Flutter
export PATH="$PATH:$HOME/.local/share/flutter/bin"

# PHP
# export PATH="$PATH:$HOME/.config/composer/vendor/bin"

## }}} #################################################################
########################################################################

## }}} #################################################################
########################################################################

########################################################################
#:  003. Aliases {{{
########################################################################

source $HOME/.config/aliases

## }}} #################################################################
########################################################################

#########################################################################
###########################  NOTHING FOLLOWS  ###########################
#########################################################################

