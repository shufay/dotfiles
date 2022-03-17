# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# if running bash
#if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc";
#    fi
#fi

# TERMINAL
export PS1="\[\e[0m\]\w \[\e[36m\]\$ \[\e[0m\]"
export TERM="xterm-256color"

# pyscf
export PYTHONPATH=~/Documents/moire/pyscf
export LD_LIBRARY_PATH=/Users/shufay/Documents/quantum_chemistry/pyscf_dfgmp2_v2/pyscf/lib/.:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/Users/shufay/Documents/quantum_chemistry/pyscf_dfgmp2_v2/pyscf/lib/./deps/lib:$LD_LIBRARY_PATH

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

export WORKON_HOME=~/envs
#eval "$(pyenv init -)"
