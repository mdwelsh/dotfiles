source ~/.bashrc

# pyenv setup.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Cargo setup.
export PATH="$HOME/.cargo/bin:$PATH"

# Poetry setup.
export PATH="$HOME/.local/bin:$PATH"

# Enable shell completion for git.
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mdw/src/downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mdw/src/downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mdw/src/downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mdw/src/downloads/google-cloud-sdk/completion.bash.inc'; fi
export PATH="/usr/local/opt/openjdk/bin:$PATH"
