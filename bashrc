export PS1="\h:\w% "
export EDITOR=vim
alias vi=vim

export GOPATH=$HOME/go
export PATH=$HOME/bin:$GOPATH/bin:$PATH

# Starship setup: brew install starship
eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/bin/git-completion.bash

# Initialize pyenv.
eval "$(pyenv init -)"

# TVM setup.
export TVM_HOME=$HOME/src/tvm
export PYTHONPATH=$TVM_HOME/python:$TVM_HOME/topi/python

source $HOME/.aliases

# Yarn setup.
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

