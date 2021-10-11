export PS1="pharloom:\w% "
export EDITOR=vim
alias vi=vim

export GOPATH=$HOME/go
export PATH=$HOME/bin:$GOPATH/bin:$PATH

# See: https://github.com/nojhan/liquidprompt
source $HOME/src/downloads/liquidprompt/liquidprompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/bin/git-completion.bash

# Initialize pyenv.
eval "$(pyenv init -)"

# OctoML setup
#source $HOME/venvs/octomizer/bin/activate
#export OCTO_HOME=$HOME/src/octoml/octomizer/libs/python
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/api"
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/octomizer"
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/octomizer-runtime"
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/octotypes"
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/reef"
#export PYTHONPATH="$PYTHONPATH:$OCTO_HOME/blobber-sidecar/blobber"
export DATABASE_URL="postgresql://postgres:@localhost/octomizer"
export OCTOMIZER_API_TOKEN=9uUyUFw/eQ2S2CvYCwmUVw==


# Aquarium setup
#export PYTHONPATH="$PYTHONPATH:$HOME/src/octoml/aquarium/python"
export VAULT_ADDR=https://vault.dev.octoml.ai/

# TVM setup for Octomizer unit tests
#export TVM_HOME=$HOME/src/octoml/tvm-docker/tvm
#export PYTHONPATH=$TVM_HOME/python:$TVM_HOME/topi/python

# TVM setup
export TVM_HOME=$HOME/src/tvm
export PYTHONPATH=$TVM_HOME/python:$TVM_HOME/topi/python

# uTVM setup
#export TVM_HOME=$HOME/src/tvm
#export TVM_LIBRARY_PATH=$HOME/src/tvm/build-microtvm
#export ZEPHYR_BASE=/opt/nordic/ncs/v1.4.2/zephyr

# Set up fzf.
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Set up zoxide (Z).
eval "$(zoxide init bash)"

source $HOME/.aliases
