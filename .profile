PATH="/usr/local/bin:$PATH"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$HOME/dev/perl/perl6/rak/bin:$PATH

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Stuff I don't want to be public or perhaps share in github
if [ -f $HOME/.profile_more ]; then
    source ~/.profile_more
fi

