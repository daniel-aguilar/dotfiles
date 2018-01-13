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
    PS1="[\u@\h \W]\\$ "
    alias tp=trash
fi

set -o vi
umask 002

alias dm=yadm

eval "$(pyenv init -)"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
