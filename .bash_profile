alias ll="ls -lagh"
alias l="ll"

export EDITOR=vim
export PS1="[\u] \[\e[33m\]\W\[\e[m\] \$ "

export PATH=~/code/medium/internal/scripts:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export GOROOT=$(brew --prefix go)/libexec
export GOPATH=~/code/go/workspace:~/code/branded/go
export PATH=${GOPATH//://bin:}/bin:$PATH

export PATH=~/code/tools/arcanist/bin:$PATH
source ~/code/tools/arcanist/resources/shell/bash-completion

[[ -e $(which impromptu) ]] && source impromptu # load impromptu (npm install -g impromptu)
alias bd=". bd -s"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $HOME/.rbenv/completions/rbenv.bash
