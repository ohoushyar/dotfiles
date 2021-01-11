# some more ls aliases
# if [ `uname` == 'Darwin' ]; then
#     alias ls='ls -G'
# else
#     alias ls='ls --color=auto'
# fi

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

if [ -f $HOME/.shared_aliases ]; then
    source $HOME/.shared_aliases
fi
