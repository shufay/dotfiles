alias reset_usb="sudo usbmuxd -u -U usbmux"
#alias tmux="TERM=screen-256color-bce tmux attach -t base || tmux new -s base"
alias tmux="TERM=screen-256color tmux"
alias pbcopy='xsel -ib'
alias pbpaste='xsel -ob'

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
alias office="ssh office"

# Ginsburg
alias gb="ssh su2254@ginsburg.rcs.columbia.edu"

# Keyboard
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
