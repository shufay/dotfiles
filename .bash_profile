source ~/.profile
source ~/.bashrc
source ~/.bash_aliases
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

export WORKON_HOME=~/envs
#eval "$(pyenv init -)"
