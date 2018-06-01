#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load NVM
export NVM_DIR="$HOME/.nvm"
if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    echo '- Initializing nvm'
    source "$NVM_DIR/nvm.sh"
else
    echo '! NVM not installed'
fi

if ! type brew > /dev/null; then
    echo '! Homebrew not installed. Skpping AWS autocompletion and nvm initialization'
else
    # Source AWS Auto completer
    if [[ -s "$(brew --prefix awscli)/libexec/bin/aws_zsh_completer.sh"  ]]; then
        echo '- Loading AWS auto completion'
        source "$(brew --prefix awscli)/libexec/bin/aws_zsh_completer.sh"
    else
        echo '! AWS Auto completer not found'
    fi
fi

# Configure python virtual env
if [[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] then
    echo '- Initializing python virtual wrapper'
    export WORKON_HOME=$HOME/.virtualenvs
    export MSYS_HOME=/c/msys/1.0
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo '! virtualenvwrapper not available'
fi

# ZSH specials
alias mmv='noglob zmv -W'

# Basic stuff
alias md='mkdir -p'
alias lr='find .'
alias l='ls -lrt'
alias c='clear'
alias backup_profile='~/backup.sh'
alias vi='vim'

# Git stuff
alias gs='git status -sb'
alias gd='git diff'
alias gaa='git add --all .'
alias ga='git add'
alias gl='git log --oneline'
alias gc='git commit --verbose'
alias gp='git push'
alias gr='git remote --verbose'

# NPM stuff
alias nl='npm list --depth=0'
alias ndb='node-debug'

# Core file edit stuff
alias esh='vi ~/.zsh-files/.zshrc;. ~/.zsh-files/.zshrc'
alias evi='vi ~/.vimrc'

# Navigation shortcuts
alias cda='cd ~/Applications'
alias cdp='cd ~/projects'
alias cdw='cd ~/projects/wysknd'

# Application shortcuts
alias ard='open ~/Applications/Arduino/Arduino.app'
alias esp='java -jar ~/Applications/ESPlorer/ESPlorer.jar'
alias mos='~/.mos/bin/mos'

###############################################################################
# Shell options
###############################################################################
bindkey -v
export TERM=xterm-256color
export KEYTIMEOUT=1
export CLICOLOR
export EDITOR=vim
export VISUAL=vim
