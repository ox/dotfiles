alias ll="ls -lagh"
alias l="ll"

export EDITOR=vim
export PS1="\[\e[33m\]\W\[\e[m\] \$ "

# export PATH=~/code/medium/internal/scripts:$PATH
export PATH=/usr/local/bin:$PATH
export GOPATH=~/code/go
export PATH=${GOPATH//://bin:}/bin:$PATH

alias bd=". bd -s"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $HOME/.rbenv/completions/rbenv.bash
