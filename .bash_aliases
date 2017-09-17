#BASH configs

#enable single-tab autocomplete
set show-all-if-ambiguous on

#remap Ctrl-W to delete word-by-word
stty werase undef
bind '\C-w:unix-filename-rubout'

#Set prompt
export PS1="\[\e[01;32m\]\W\[\e[00m\] \\$ "

#Aliases
alias resource="source ~/.bash_aliases"
alias g="gvim"
