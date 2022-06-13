if [ -r ~/.bash_profile ]; then echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.profile; fi
. "$HOME/.cargo/env"
