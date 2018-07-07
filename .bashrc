system=$(uname -s)

if [ $system == "Linux" ]; then
    source /etc/skel/.bashrc
elif [ $system == "Darwin" ]; then
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
fi

source ~/.bash_aliases

set -o vi

AUTOLOAD_DIR="$HOME/.autoload.d"
if [ -d $AUTOLOAD_DIR ]; then
    for file in $AUTOLOAD_DIR/*; do
        test -f "$file" && . $file
    done
fi
