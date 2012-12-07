# some more ls aliases
if [ `uname` == 'Darwin' ]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias pwsafe='sudo pwsafe -E '
alias rmbak="find . -iname '*~' | xargs rm -v"
alias ack="ack -i"

alias star='ssh -p24312 space@localhost'

epoch_to_datetime() { perl -MDateTime -E "say DateTime->from_epoch(epoch => $1)->datetime();"; }
perl_mod_version() { perl -M$1 -E 'say '$1'->VERSION;'; }


# C command line code configuration
go_libs="-lm"
go_flags=" -g -Wall -include allheads.h -O3"
alias go_c="c99 -xc - $go_libs $go_flags"

# Stuff I don't want to be public or perhaps share in github
if [ -f $HOME/.bash_aliases_more ]; then
    source ~/.bash_aliases_more
fi

