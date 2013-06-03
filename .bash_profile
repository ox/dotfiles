if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ll="ls -flagh"

export PS1="\[\e[33m\]\W\[\e[m\] \$ "

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
