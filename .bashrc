system=$(uname -s)

if [ $system == "Linux" ]; then
    source /etc/skel/.bashrc
elif [ $system == "Darwin" ]; then
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
fi

source $HOME/.bash_aliases

set -o vi

autoload_dir="$HOME/.autoload.d"
if [ -d $autoload_dir ]; then
    for i in $autoload_dir/*; do
        test -r $i && . $i
    done
    unset autoload_dir i
fi
