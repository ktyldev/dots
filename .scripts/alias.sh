#!/usr/bin/env bash

alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias en="dict -d fra-eng"
alias f=fff
alias fr="dict -d eng-fra"
alias key="$SCRIPTS/sshkey.sh"
alias nf="neofetch"
alias p="ping archlinux.org"
alias o=xdg-open
alias r=ranger
alias s="search"
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
