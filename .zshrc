export CONFIG=$HOME/.config
export PROJECTS=$HOME/prj
export GOPATH=$PROJECTS/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

export SCRIPTS=$HOME/.scripts
source $SCRIPTS/include.sh
source $SCRIPTS/func.sh
source $HOME/git/include.sh

export TERMINAL=/usr/bin/kitty
export EDITOR=/usr/bin/nvim
export ZSH=$HOME/.oh-my-zsh

export WTTRURL="wttr.in/?0"

export FFF_HIDDEN=1

export XDG_CACHE_HOME=$HOME/.cache

ZSH_THEME="sunaku"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# start ssh-agent automatically
ssh-agent
eval $(ssh-agent -s)
clear
