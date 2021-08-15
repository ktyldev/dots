export CONFIG=$HOME/.config
export PROJECTS=$HOME/prj
export GOPATH=$PROJECTS/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

export SCRIPTS=$HOME/.scripts
source $SCRIPTS/env.sh
export PATH=$PATH:$SCRIPTS
export PATH=$PATH:$SCRIPTS/cam

export TERMINAL=/usr/bin/kitty
export EDITOR=/usr/bin/nvim
export ZSH=$HOME/.oh-my-zsh

export WTTRURL="wttr.in/?0"

export XDG_CACHE_HOME=$HOME/.cache

ZSH_THEME="sunaku"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source "$SCRIPTS/alias.sh"

# you're not in Vim ya dummy
alias :q=exit
alias :wq=exit
alias :w="make run"

# start ssh-agent automatically
ssh-agent
eval $(ssh-agent -s)
clear

# restore theme
(cat ~/.cache/wal/sequences &)
