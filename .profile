# MacPorts Installer addition on 2010-01-06_at_00:11:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# enable color support of ls
alias ls='ls -G'
alias ll='ls -alh'

alias grep='grep --color=auto'

alias office='ssh omid@omid.regentmarkets.com'
alias star='ssh -p24312 space@localhost'

# git auto completion
source ~/.git-completion.sh
PS1='[\u@\h \W]$(__git_ps1 " \e[0;33m(%s)\e[0m ")\$ '


# Setting PATH for Python 3.2
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/Library/Frameworks/Python.framework/Versions/3.2/lib/pkgconfig/

source ~/.bashrc

