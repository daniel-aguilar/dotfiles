system_type=$(uname -s)

if [ "$system_type" == "Linux" ]; then
    source /etc/skel/.bashrc

    alias open=xdg-open
fi

set -o vi
umask 002

RESET="\[\033[0m\]"
FG_L_GREEN="\[\033[1;32m\]"
FG_L_BLUE="\[\033[1;34m\]"
FG_L_RED="\[\033[1;31m\]"

PS1="[$FG_L_GREEN\u@\h$RESET $FG_L_BLUE\W$RESET $FG_L_RED\@$RESET]\\$ "

alias tp=trash-put
alias dm=yadm
