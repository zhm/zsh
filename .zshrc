ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

export EDITOR='mvim -f'
export GIT_EDITOR='mvim -f'
export NODE_PATH=/usr/local/lib/node_modules
export DROPBOX_PATH=$HOME/Dropbox
export DEV_PATH=$DROPBOX_PATH/dev
export MONGO_PATH=$DROPBOX_PATH/dev/mongodb-osx-x86_64-2.0.2
export ANDROID_SDK_PATH=~/adt-bundle-mac/sdk
export CLASSPATH=$HOME/local/jar
export RY_PREFIX=$HOME/local
export JRUBY_HOME=$RY_PREFIX/lib/ry/current
export JAVA_OPTS="-d32"
export JRUBY_OPTS=-J-Xss32768k
export PHP_PATH=$HOME/local/src/PHP5

plugins=(git ruby rails osx)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source-if-exists ~/.aws
source-if-exists ~/.private

prepend-path "$ANDROID_SDK_PATH/platform-tools"
prepend-path "/usr/local/share/python"
prepend-path "/usr/local/sbin"
prepend-path "/usr/local/bin"
prepend-path "$HOME/local/bin"
prepend-path "$HOME/local/geotools/bin"
prepend-path "$RY_PREFIX/lib/ry/current/bin"
append-path  "$ANDROID_SDK_PATH/tools"
append-path  "$HOME/dev/sysadmin/bin"
append-path  "/usr/local/share/npm/bin"

export HISTSIZE=100000000
export SAVEHIST=100000000
export CLICOLOR=1

# ctrl+n/p delete all-up-to and delete-all-after cursor
bindkey "^N" backward-kill-line
bindkey "^P" kill-line

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# turn off the annoying auto-correction
unsetopt correct_all
