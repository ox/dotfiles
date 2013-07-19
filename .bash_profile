if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ll="ls -flagh"
alias l="ll"
alias subl="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"

if [ -e /Applications/Mou.app ]; then
  alias mou="open /Applications/Mou.app"
fi

export EDITOR=vim
export PS1="\[\e[33m\]\W\[\e[m\] \$ "

export PATH=/Users/artem/code/medium/internal/scripts:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -e $(which impromptu) ]] && source impromptu # load impromptu (npm install -g impromptu)
