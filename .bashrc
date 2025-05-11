#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

cat /home/clair/todo.txt

cowsay -f sus $(newsboat -x print-unread)

export MANPAGER='nvim +Man!'

alias cls='clear'
alias ll='ls -l'
alias la='ls -al'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval $(starship init bash)
