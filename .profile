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

# scp for Ginsburg
scp_from_gb() {
  scp su2254@motion.rcs.columbia.edu:"$1" "$2"
}

scp_dir_from_gb() {
  scp -r su2254@motion.rcs.columbia.edu:"$1" "$2"
}

scp_to_gb() {
    scp "$1" su2254@motion.rcs.columbia.edu:"$2"
}

scp_dir_to_gb() {
    scp -r "$1" su2254@motion.rcs.columbia.edu:"$2"
}

# scp for office PC
scp_from_office() {
  scp -P 22142 shufay@128.59.114.230:"$1" "$2"
  }

  scp_dir_from_office() {
    scp -r -P 22142 shufay@128.59.114.230:"$1" "$2"
}

scp_to_office() {
    scp -P 22142 "$1" shufay@128.59.114.230:"$2"
}

scp_dir_to_office() {
    scp -r -P 22142 "$1" shufay@128.59.114.230:"$2"
}

# Terminal
export PS1="\[\e[0m\]\w \[\e[36m\]bridges-2 \$ \[\e[0m\]"
export TERM="xterm-256color"
export CLICOLOR=1 # For `ls` colorized output.
export LSCOLORS=gxfxcxdxbxegedabagacad

# Load modules
module load intel/2021.3.0
module load mkl/2020.4.304
module load openmpi/4.1.1-gcc8.3.1
module load intelmpi/2021.3.0-intel2021.3.0
#module load openblas/0.3.13-intel20.4
module load gcc/10.2.0
module load fftw/3.3.8
module load julia/1.5.2
module load anaconda3/2020.11
module load python/3.8.6

# PySCF
export PYTHONPATH=~/libs/pyscf:$PYTHONPATH
export PYTHONPATH=~/in_prep/2deg:$PYTHONPATH
#export LD_PRELOAD=$MKLROOT/lib/intel64/libmkl_def.so:$MKLROOT/lib/intel64/libmkl_sequential.so:$MKLROOT/lib/intel64/libmkl_core.so

# MKL
export LD_LIBRARY_PATH=/jet/packages/intel/mkl/lib/intel64:$LD_LIBRARY_PATH

# Scratch directory
export SCRATCHDIR=${PROJECT}

# QChem
export QC=$HOME/qchem
export QCSCRATCH=$SCRATCHDIR/qchem
export QC_EXT_LIBS=$QCSCRATCH/extlibs

# svn
export SVNROOT=https://jubilee.q-chem.com/svnroot
export QCSVN=$SVNROOT/qchem              #Q-Chem source code repository
export QCREFSVN=$SVNROOT/qchem_dailyref  #Q-Chem reference output repository
export QCAUXSVN=$SVNROOT/qcaux           #Q-Chem auxiliary files repository
export QCMANUAL=$SVNROOT/qchem_manual    #Q-Chem Manual repository
export SVN_EDITOR=vim                    #optional, change the default editor for SVN
