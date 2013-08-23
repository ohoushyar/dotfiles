# some more ls aliases
if [ `uname` == 'Darwin' ]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# Git aliases
alias gap='git add -p'
alias gst='git status'
alias gci='git commit'
alias gdiff='git diff'
alias gdiffc='git diff --cached'
alias gif='git fetch'
alias gpr='git pull --rebase'
alias gwc='git fetch && git llog --stat HEAD@{upstream}..HEAD'

# Open files which git shows as modified
alias om='vim `git status | grep modified | perl -ne "s/.*modified:\s+//; print" | xargs`'

alias grep='grep --color=auto'
alias pwsafe='sudo pwsafe -E '
alias rmbak="find . -iname '*~' | xargs rm -v"
alias ack="ack -i"
alias cpanm="cpanm --mirror https://cpan.metacpan.org/"

alias star='ssh -p24312 space@localhost'

epoch_to_datetime() { perl -MDateTime -E "say DateTime->from_epoch(epoch => $1)->datetime();"; }
perl_mod_version() { perl -M$1 -E 'say '$1'->VERSION;'; }
ln-safe() {
    sudo mv $2 $2.`date +%s`;
    sudo ln -s $1 $2;
}


# C command line code configuration
go_libs="-lm"
go_flags=" -g -Wall -include allheads.h -O3"
alias go_c="c99 -xc - $go_libs $go_flags"

# Vagrant stuff
alias vup='vagrant up'
alias vhalt='vagrant halt'
alias vssh='vagrant ssh'
alias vprov='vagrant provision'

# Stuff I don't want to be public or perhaps share in github
if [ -f $HOME/.bash_aliases_more ]; then
    source $HOME/.bash_aliases_more
fi

