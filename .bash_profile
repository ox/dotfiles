if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias ll="ls -flagh"
alias l="ll"

alias gs="git status"
alias gcm="git commit -m "
alias gca="git commit --amend --no-edit"
alias gcam="git commit -am "
alias gd="git diff"
alias greco="git add . && git rebase --continue"

if [ -e /Applications/Mou.app ]; then
  alias mou="open /Applications/Mou.app"
fi

export EDITOR=vim
export PS1="\[\e[33m\]\W\[\e[m\] \$ "

export PATH=~/code/medium/internal/scripts:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export GOROOT=$(brew --prefix go)/libexec
export GOPATH=~/code/go/workspace:~/code/branded/go
export PATH=${GOPATH//://bin:}/bin:$PATH

export PATH=~/code/tools/arcanist/bin:$PATH
source ~/code/tools/arcanist/resources/shell/bash-completion

export PLAN9=`brew --prefix plan9port`/libexec
export PATH=$PATH:$PLAN9/bin

# make AMI tools reachable
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$EC2_AMITOOL_HOME/bin:$PATH

# for mopidy
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages:$PYTHONPATH

function serve {
  python -mSimpleHTTPServer
}

[[ -e $(which impromptu) ]] && source impromptu # load impromptu (npm install -g impromptu)
alias bd=". bd -s"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $HOME/.rbenv/completions/rbenv.bash
export PATH=/usr/local/sbin:$PATH
