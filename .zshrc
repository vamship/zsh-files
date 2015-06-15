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

# Source AWS Auto completer
if [[ -s "/usr/local/Cellar/awscli/1.7.18/libexec/bin/aws_zsh_completer.sh" ]]; then
  source "/usr/local/Cellar/awscli/1.7.18/libexec/bin/aws_zsh_completer.sh"
else
  echo 'AWS Auto completer not found'
fi

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

###############################################################################
# Shell options
###############################################################################
bindkey -v
export TERM=xterm-256color
export KEYTIMEOUT=1
export CLICOLOR
export EDITOR=vim
export VISUAL=vim
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
