source /etc/skel/.bashrc

set -o vi

RESET="\[\033[0m\]"
FG_L_GREEN="\[\033[1;32m\]"
FG_L_BLUE="\[\033[1;34m\]"
FG_L_RED="\[\033[1;31m\]"

PS1="[$FG_L_GREEN\u@\h$RESET $FG_L_BLUE\W$RESET $FG_L_RED\@$RESET]\\$ "

alias gpg=gpg2
alias tp=trash-put
alias open=xdg-open
alias dm=yadm
