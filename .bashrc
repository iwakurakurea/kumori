#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

motd () {
	cat /home/clair/todo.txt
}

power () {
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/{print $NF}'
}

if [ "${PWD}" = "/home/clair" ]; then
	motd
fi

export MANPAGER='nvim +Man!'
export PATH="$PATH:/home/clair/go/bin:/home/clair/.cargo/bin"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Aliases
alias cls='clear'
ezacmd='eza --icons=always --hyperlink --no-quotes --smart-group'
alias ls='${ezacmd}'
alias ll='${ezacmd} -l'
alias la='${ezacmd} -al'
alias lt='${ezacmd} -lT'
alias lat='${ezacmd} -laT'

alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

eval $(starship init bash)
