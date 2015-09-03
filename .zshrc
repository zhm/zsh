ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

export EDITOR='mvim -f'
export GIT_EDITOR='mvim -f'
export DROPBOX_PATH=$HOME/Dropbox
export DEV_PATH=$DROPBOX_PATH/dev
export MONGO_PATH=$DROPBOX_PATH/dev/mongodb-osx-x86_64-2.0.2
export ANDROID_SDK_PATH=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
export CLASSPATH=$HOME/local/jar
export RY_PREFIX=$HOME/local
export PHP_PATH=$HOME/local/src/PHP5
export GOPATH=$HOME/go
export OCLINT_HOME=$HOME/local/oclint

export FULCRUM_WEB=$HOME/dev/fulcrum_app2
export FULCRUM_IOS=$HOME/dev/fulcrum_ios
export FULCRUM_ANDROID=$HOME/dev/fulcrum_android
export FULCRUM_SITE=$HOME/dev/fulcrumapp.com
export FULCRUM_TILES=$HOME/dev/fulcrum_tiles

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
prepend-path "$HOME/local/oclint/bin"
append-path  "$ANDROID_SDK_PATH/tools"
append-path  "$HOME/dev/sysadmin/bin"
append-path  "$GOPATH/bin"
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
