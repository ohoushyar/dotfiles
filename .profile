if [ -d "/usr/local/bin" ]; then
    PATH=/usr/local/bin:$PATH
fi

if [ -d "$HOME/.rvm/bin" ]; then
    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

if [ -d "$HOME/dev/perl/perl6/rak/bin" ]; then
    PATH=$HOME/dev/perl/perl6/rak/bin:$PATH
fi

# Android tool path
if [ -d "$HOME/dev/android/adt-bundle-mac-x86_64-20130717/sdk/tools" ]; then
    PATH=$HOME/dev/android/adt-bundle-mac-x86_64-20130717/sdk/tools:$PATH
fi
if [ -d "$HOME/dev/android/adt-bundle-mac-x86_64-20130717/sdk/platform-tools" ]; then
    PATH=$HOME/dev/android/adt-bundle-mac-x86_64-20130717/sdk/platform-tools:$PATH
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH=$HOME/bin:$PATH
fi

#local lib stuff
if [ -d "$HOME/perl5/lib/perl5" ] ; then
    PERL5LIB=$HOME/perl5/lib/perl5:$PERL5LIB
fi
export PERL5LIB

if [ -d "$HOME/perl5/bin" ] ; then
    PATH=$HOME/perl5/bin:$PATH
fi

if [ -d "/usr/local/sbin" ] ; then
    PATH=/usr/local/sbin:$PATH
fi

if [ -d "/usr/local/protoc" ] ; then
    PATH=/usr/local/protoc/bin:$PATH
fi

export PATH

if [ -d "$HOME/dev/go" ] ; then
    GOPATH=$HOME/go
fi
export GOPATH

# Setting for the new UTF-8 terminal support in MacOSx
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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
if [ -f $HOME/.bash_profile_more ]; then
    source $HOME/.bash_profile_more
fi

