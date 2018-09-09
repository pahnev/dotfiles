export ZSH=/Users/kirill/.oh-my-zsh
export GEM_HOME=~/.gems
export PATH=$PATH:~/.gems/bin
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"

ZSH_THEME="amuse"

plugins=(git)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

alias code="open -a 'Visual Studio Code'"
alias atom="open -a 'Atom'"
alias sub="open -a 'Atom'"
alias xcode="open -a 'Xcode'"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
