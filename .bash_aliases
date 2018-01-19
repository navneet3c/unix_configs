#BASH configs

#history item merging
export HISTCONTROL=ignoreboth:erasedups

#remap Ctrl-W to delete word-by-word
stty werase undef
bind '\C-w:unix-filename-rubout'

#Set prompt
#export PS1="\[\e[01;32m\]\u\[\e[00m\]:\W \\$ "

#Aliases
alias resource="source ~/.bash_aliases"
alias g="gvim"
#alias v_inc="pactl -- set-sink-volume @DEFAULT_SINK@ 0.2"
alias rc_file="g ~/.bash_aliases"
alias sudo="sudo "
alias vpnconnect="sudo openconnect"
alias fname="readlink -m"
alias h="history"
