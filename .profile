if [ -d "/usr/local/bin" ]; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d "$HOME/.rvm/bin" ]; then
    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

if [ -d "$HOME/dev/perl/perl6/rak/bin" ]; then
    PATH=$HOME/dev/perl/perl6/rak/bin:$PATH
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH=$HOME/bin:$PATH
fi

export PATH

# Set git dirty status
GIT_PS1_SHOWDIRTYSTATE=
GIT_PS1_SHOWUNTRACKEDFILES=

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
#     . "$HOME/.bashrc"
#     fi
# fi


# Stuff I don't want to be public or perhaps share in github
if [ -f $HOME/.profile_more ]; then
    source $HOME/.profile_more
fi

