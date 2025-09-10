#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

cat /home/clair/todo.txt

# cowsay -f sus meow

ezacmd='eza --icons=always --hyperlink --no-quotes --smart-group'

export MANPAGER='nvim +Man!'
export PATH="$PATH:/home/clair/go/bin:/home/clair/.cargo/bin"

alias cls='clear'
alias ls='${ezacmd}'
alias ll='${ezacmd} -l'
alias la='${ezacmd} -al'
alias lt='${ezacmd} -lT'
alias lat='${ezacmd} -laT'

alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

eval $(starship init bash)
