# Really helpfull doc about dotfiles:
# http://mywiki.wooledge.org/DotFiles

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

