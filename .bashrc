source /etc/skel/.bashrc

set -o vi

# prompt

RESET="\[\033[0m\]"
FG_L_GREEN="\[\033[1;32m\]"
FG_L_BLUE="\[\033[1;34m\]"
FG_L_RED="\[\033[1;31m\]"

PS1="[$FG_L_GREEN\u@\h$RESET $FG_L_BLUE\W$RESET $FG_L_RED\@$RESET]\\$ "

# pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv-virtualenv

eval "$(pyenv virtualenv-init -)"

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/daniel/.sdkman"
[[ -s "/home/daniel/.sdkman/bin/sdkman-init.sh" ]] && source "/home/daniel/.sdkman/bin/sdkman-init.sh"

# added by travis gem
[ -f /home/daniel/.travis/travis.sh ] && source /home/daniel/.travis/travis.sh

# go

PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$(go env GOPATH)/bin"
