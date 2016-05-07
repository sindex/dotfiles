if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export TERM='xterm-256color'
export CLICOLOR=1
export EDITOR=vim

alias subl="subliminal download -l en"
