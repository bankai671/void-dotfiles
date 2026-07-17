# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


source /usr/share/bash-completion/completions/git

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias xr="doas xbps-remove"
alias cb="xclip -selection clipboard"
alias dotfiles='/usr/bin/git \
    --git-dir=$HOME/.dotfiles.git \
    --work-tree=$HOME'
__git_complete dotfiles __git_wrap__git_main

complete -F _root_command doas

PS1='[\u@\h \W]\$ '

export EDITOR='vim'
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;38;5;74m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'
export LESS='-R'

# opencode
export PATH=/home/alice/.opencode/bin:$PATH
