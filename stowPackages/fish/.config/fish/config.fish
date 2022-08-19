# vim:fileencoding=utf-8:foldmethod=marker

#: 01. Environment Variables {{{

#: 01-a. Global Variables {{{

# Default Editor
set --export EDITOR vim

# dotOwO -- cindrmons-config-files
set --export OWO $HOME/.owo

# }}}

#: 01-b. XDG Variables {{{

set --export XDG_CONFIG_HOME $HOME/.config
set --export XDG_DATA_HOME $HOME/.local/share
set --export XDG_CACHE_HOME $HOME/.cache

# }}}

#: 01-c. Program-Specific Configuration {{{

## DENO
# set --export DENO_DIR $HOME/.local/share/deno

## RUBY
# set --export GEM_HOME (ruby -e 'puts Gem.user_dir')

## GOLANG
set --export GOPATH $XDG_DATA_HOME/go

## FLUTTER
# set --export CHROME_EXECUTABLE /usr/bin/brave-browser

# }}}

#: 01-x. PATH {{{

## LOCAL SCRIPTS
set -gx PATH $PATH $HOME/Scripts $HOME/Binaries/Scripts

## LOCAL BINARY DIRECTORIES
set -gx PATH $PATH $HOME/bin $HOME/.local/bin

## YARN
# set -gx PATH $PATH (yarn global bin)

## RUBY
# set -gx PATH $PATH $HOME/.local/share/rbenv/bin $HOME/.local/share/rbenv/plugins/ruby-build/bin
set -gx PATH $PATH $GEM_HOME/bin

## GOLANG
set -gx PATH $PATH $GOPATH/bin

## FLUTTER
set -gx PATH $PATH $XDG_DATA_HOME/flutter/bin

## PHP
set -gx PATH $PATH $XDG_CONFIG_HOME/composer/vendor/bin $XDG_DATA_HOME/composer/vendor/bin

# }}}

# }}}

#: 02. CUSTOM FISH FUNCTIONS {{{

## Custom Fish Greeting

function fish_greeting
    echo "Welcome to NEXVS-ALPHA!";
    echo "To know more about a specific command, type '[man/tldr] <command>'";
end
funcsave fish_greeting

# }}}
