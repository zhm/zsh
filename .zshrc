ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

export PATH=~/local/geotools/bin:~/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=$PATH:~/android/android-sdk-macosx/tools
export EDITOR='mvim -f'
export GIT_EDITOR='mvim -f'
export NODE_PATH=/usr/local/lib/node_modules
export DROPBOX_PATH=/Users/zacmcc/Dropbox
export DEV_PATH=$DROPBOX_PATH/dev
export MONGO_PATH=$DROPBOX_PATH/dev/mongodb-osx-x86_64-2.0.2
export ANDROID_SDK_PATH=~/android/android-sdk-macosx
export CLASSPATH=~/local/jar

plugins=(git ruby rails osx)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source ~/.rvm/scripts/rvm
rvm use 1.9.2

export HISTSIZE=100000000
export SAVEHIST=100000000
export CLICOLOR=1
