# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[38;5;15m\]\[$(tput sgr0)\]:\[\033[33m\]\w\[\033[38;5;15m\]\[$(tput sgr0)\] \[\033[01;34m\]\$??\[\033[36m\]\`__git_ps1\`\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ "
# umask 022

# Avoid duplicates
HISTCONTROL=ignorespace:ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#Infinit history
HISTSIZE= 
HISTFILESIZE=

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lhA'
alias ip='ip -c'
alias cd..='cd ..'
alias myip='curl -w "\n" ipinfo.io'
#alias less='less ++F'

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
