# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh

export CLICOLOR=1
. ~/Dropbox/dev/nvm/nvm.sh
nvm use latest
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
alias be='bundle exec'
alias bi='bundle install'
alias rs='bundle exec rails s'
alias gp='git pull'
alias gs='git status'
alias gc='git clone'
alias gb='git branch -a'
alias ga='git add --all'
alias gr='git remote show origin'
alias mgd='~/Dropbox/dev/mongo/bin/mongod --dbpath ~/Documents/mongo_data'
alias mgs='~/Dropbox/dev/mongo/bin/mongo'
alias editbash='mate ~/Dropbox/stuff/bash/.bashrc'
alias editzsh='mate ~/Dropbox/stuff/bash/.zshrc'
alias editvim='mate ~/.vimrc'
alias veditbash='mvim ~/Dropbox/stuff/bash/.bashrc'
alias veditzsh='mvim ~/Dropbox/stuff/bash/.zshrc'
alias veditvim='mvim ~/.vimrc'