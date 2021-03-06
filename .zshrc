export ZSH=/home/carlos/.oh-my-zsh

plugins=(colorize ssh-agent)

ZSH_THEME="bullet-train"

BULLETTRAIN_PROMPT_ORDER=(
    status
    custom
    time
    dir
    ruby
    git
    cmd_exec_time
)

BULLETTRAIN_CUSTOM_MSG="carloshm91"
BULLETTRAIN_CUSTOM_BG="white"
BULLETTRAIN_CUSTOM_FG="black"
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_BG="green"
BULLETTRAIN_GIT_DIRTY=""
BULLETTRAIN_GIT_CLEAN=""

DEFAULT_USER=$USER
source $ZSH/oh-my-zsh.sh

alias ursa='sshuttle --dns -r one@ursa.dacya.ucm.es 10.0.0.0/8'

export GOPATH=$HOME/go
export EDITOR=vim

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

function set_one {
    export ONE_LOCATION=$PWD
    export PATH=$PWD/bin:$PATH
}

wd() {
  . /home/carlos/bin/wd/wd.sh
}

source /home/carlos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
