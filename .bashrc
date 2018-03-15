system_type=$(uname -s)

if [ "$system_type" == "Linux" ]; then
    source /etc/skel/.bashrc

    RESET="\[\033[0m\]"
    FG_L_GREEN="\[\033[1;32m\]"
    FG_L_BLUE="\[\033[1;34m\]"
    FG_L_RED="\[\033[1;31m\]"

    PS1="[$FG_L_GREEN\u@\h$RESET $FG_L_BLUE\W$RESET $FG_L_RED\@$RESET]\\$ "

    alias open=xdg-open
    alias tp=trash-put
fi
if [ "$system_type" == "Darwin" ]; then
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

    PS1="[\u@\h \W]\\$ "

    alias tp=trash
fi

set -o vi
umask 002

alias dm=yadm

AUTOLOAD_DIR="$HOME/.autoload.d"
if [ -d $AUTOLOAD_DIR ]; then
    for f in $AUTOLOAD_DIR/*; do
        source $f
    done
fi
