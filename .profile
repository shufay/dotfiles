# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc";
    fi
fi

# Terminal
export PS1="\[\e[0m\]\w \[\e[36m\]ginsburg \$ \[\e[0m\]"
export TERM="xterm-256color"

# Load modules
module load intel-parallel-studio/2020
module load openmpi/gcc/64/1.10.7
module load mpich/ge/gcc/64/3.3.2
module load blas/gcc/64/3.8.0
module load gcc/10.2.0
module load lapack/gcc/64/3.9.0
module load cmake/3.22.1
module load jupyter/12.0.0
module load anaconda/3-2021.11

# PySCF
export PYTHONPATH=~/libs/shufay_pyscf
export PYTHONPATH=~/moire/moire:$PYTHONPATH
export LD_PRELOAD=$MKLROOT/lib/intel64/libmkl_def.so:$MKLROOT/lib/intel64/libmkl_sequential.so:$MKLROOT/lib/intel64/libmkl_core.so

# Scratch directory
export SCRATCHDIR=/burg/ccce/users/su2254
