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

# GO
# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin    

# CERN ROOT
#export ROOTSYS=/usr/local/root-6.06.02/compile
#export PATH=$ROOTSYS/bin:$PATH
#export PYTHONDIR=$ROOTSYS
#export LD_LIBRARY_PATH=$ROOTSYS/lib:$PYTHONDIR/lib:$ROOTSYS/bindings/pyroot:$LD_LIBRARY_PATH
#export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH:$ROOTSYS/bindings/pyroot
source /usr/local/root-6.10.06/bin/thisroot.sh

# PYTHIA
export PYTHIA8=~/pythia8235
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PYTHIA8/lib
export PYTHIA8DATA=$PYTHIA8/share/Pythia8/xmldoc

# TERMINAL
export PS1="\[\e[0m\]\w \[\e[36m\]\$ \[\e[0m\]"

