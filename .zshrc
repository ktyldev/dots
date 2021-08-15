export SCRIPTS=$HOME/.scripts
export CONFIG=$HOME/.config
export PROJECTS=$HOME/prj
export GOPATH=$PROJECTS/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin
export PATH=$PATH:$SCRIPTS

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

alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias en="dict -d fra-eng"
alias f=fff
alias fr="dict -d eng-fra"
alias key="$SCRIPTS/sshkey.sh"
alias nf="neofetch"
alias p="ping archlinux.org"
alias o=xdg-open
alias r=ranger
alias sv="sudo $EDITOR"
alias t="$SCRIPTS/term.sh &"
alias td=todolist
alias theme="$SCRIPTS/theme"
alias v=$EDITOR
alias vi=$EDITOR
alias w="curl '$WTTRURL'"
alias weather="curl '$WTTRURL'"

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
