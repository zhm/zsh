ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

export PATH=/Library/PostgreSQL/9.0/bin:$PATH
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:~/android/android-sdk-macosx/tools
export PKG_CONFIG_PATH=/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH
export MDBDRIVER_PATH=/usr/local/lib/libmdbodbc
export EDITOR='mvim -f'
export GIT_EDITOR='mvim -f'
export NODE_PATH=/usr/local/lib/node_modules
export DROPBOX_PATH=/Users/zacmcc/Dropbox
export DEV_PATH=$DROPBOX_PATH/dev
export MONGO_PATH=$DROPBOX_PATH/dev/mongodb-osx-x86_64-2.0.2
export ANDROID_SDK_PATH=~/android/android-sdk-macosx

plugins=(git ruby rails osx)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases

export HISTSIZE=100000000
export SAVEHIST=100000000
export CLICOLOR=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
