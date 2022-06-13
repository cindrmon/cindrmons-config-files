
# Environment Variables

## Editor
set --export EDITOR vim

## Yarn Local
set -gx PATH $PATH $HOME/.yarn/bin

## Go

set --export GOROOT /usr/local/go
set --export GOPATH /mnt/c/Go
set --export GOBIN $GOPATH/bin

## PATH variables
# Scripts
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin $GOROOT/bin $HOME/Binaries/Scripts $HOME/Code/Scripts
# Binary Programs
# set -gx PATH $PATH $HOME/BinaryPrograms/OpenRGB/
# set -gx PATH $PATH $HOME/BinaryPrograms/Gophie/
# set -gx PATH $PATH /var/lib/snapd/snap/bin

## Custom Fish Greeting

function fish_greeting
    echo "Welcome to NEXVS-ALPHA!";
    echo "To know more about a specific command, type '[man/tldr] <command>'";
end
funcsave fish_greeting
