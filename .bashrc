system=$(uname -s)

if [ $system == "Linux" ]; then
    source /etc/skel/.bashrc

    reset="\[$(tput sgr0)\]"
    green="\[$(tput bold; tput setaf 119)\]"
    blue="\[$(tput bold; tput setaf 12)\]"

    PS1="[$green\u@\h$reset $blue\W$reset]\\$ "
elif [ $system == "Darwin" ]; then
    source .bash_aliases

    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

    PS1="[\u@\h \W]\\$ "
fi

set -o vi
umask 002

AUTOLOAD_DIR="$HOME/.autoload.d"
if [ -d $AUTOLOAD_DIR ]; then
    for f in $AUTOLOAD_DIR/*; do
        source $f
    done
fi
