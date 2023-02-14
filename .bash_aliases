alias reset_usb="sudo usbmuxd -u -U usbmux"
#alias tmux="TERM=screen-256color-bce tmux attach -t base || tmux new -s base"
alias tmux="TERM=screen-256color tmux"
alias pbcopy='xsel -ib'
alias pbpaste='xsel -ob'
alias rm='rm -I'

# Jupyter lab
alias jl="jupyter-lab"

# CERN
alias lxplus="ssh -Y ufay@lxplus.cern.ch"
alias sftp@lxplus="sftp ufay@lxplus.cern.ch"

# CMT cluster
alias cmt="ssh shufay@cmtrack2.caltech.edu"
alias sftp@cmt="sftp shufay@cmtrack2.caltech.edu"

# pyenv-virtualenvwrapper
alias pv="pyenv virtualenvwrapper"
alias pvl="pyenv virtualenvwrapper_lazy"

# Pauling
alias pauling="ssh suung@pauling.caltech.edu"

# Reichman Rocks
alias rocks="ssh rocks"

# Office desktop
alias office="ssh office_pc"

# Ginsburg
alias gb="ssh su2254@ginsburg.rcs.columbia.edu"
alias ruth="ssh su2254@ruth.rcs.columbia.edu"
alias bader="ssh su2254@bader.rcs.columbia.edu"
alias sftp@gb="sftp su2254@ginsburg.rcs.columbia.edu"
alias @gb="su2254@motion.rcs.columbia.edu"

# Bridges-2
alias br2="ssh shufay@bridges2.psc.edu"

# Expanse
alias exp="ssh -l shufay expanse.sdsc.xsede.org"

# Keyboard
alias ll='ls -alFhG'
alias la='ls -AG'
alias l='ls -CG'
