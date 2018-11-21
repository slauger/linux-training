export PS1='\n${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;37m\]\H:\[\033[01;33m\]\w \[\033[01;00m\]\n\s\$ \[\033[00m\]'
umask 022
alias ..='cd ..'
alias ...='cd ../..'
alias sr='ssh -l root'
export EDITOR="vim"
export HISTFILESIZE=99999999
export HISTSIZE=99999999
export HISTCONTROL="ignoreboth"
export LS_OPTIONS='--color=auto -alih'
