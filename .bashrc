system=$(uname -s)

if [ $system == "Linux" ]; then
    source /etc/skel/.bashrc
elif [ $system == "Darwin" ]; then
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

    PS1="[\u@\h \W]\\$ "
fi

source ~/.bash_aliases

set -o vi
umask 002

AUTOLOAD_DIR="$HOME/.autoload.d"
if [ -d $AUTOLOAD_DIR ]; then
    for f in $AUTOLOAD_DIR/*; do
        source $f
    done
fi
