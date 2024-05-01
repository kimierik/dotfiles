#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#when starting a new terminal or clearing the screen run this
header(){
    echo 🔥🔥🔥🔥
    pwd
    echo 
    echo 
    ls --color=auto
}

#stolen from the internet
#gets current git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}



#aliases
alias ls='ls --color=auto'
alias vimn='nvim'
alias vi='nvim'

#alias vim='neovide'
alias vim='nvim'
alias :q='exit'

#alias emacs='emacsclient -c -a 'emacs''
alias pacman='sudo pacman'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

alias sus="systemctl suspend"
alias clear="clear;'header'"
alias spawn="xfce4-terminal"
alias ggraph="git log --graph"
alias vimnconf="vim ~/.config/nvim/"
#alias cls="clear;ls"



# vi mode
set -o vi


# colors
_cyan='\e[1;36m';
_purple='\e[1;35m';
_green='\e[1;32m';
_yellow='\e[1;33m';
_red='\e[1;31m';


#prompt
#PS1="$_green┌──$_purple\u$_yellow@$_cyan\h:$_red\W$_green\$(parse_git_branch) \n└─$> "
PS1="$_green┌── "   # start arrow
PS1+="$_purple\u"   # user
PS1+="$_yellow@"    # seperator
PS1+="$_cyan\h$_yellow:"    # hostname
PS1+="$_red\W"      # workdir
PS1+="$_green\$(parse_git_branch) \n" # current git branch
PS1+="└─$>"         # end arrow



#misc exports
. "$HOME/.cargo/env"
export PICO_SDK_PATH=/home/kimi/programming/github/pico-sdk
export PATH="$HOME/.emacs.d/bin:;$PATH"
export PATH="$HOME/.cargo/bin:;$PATH"
#go 
export GOPATH=/usr/local/go
export GOPATH=/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"


export CABAL_CONFIG=~/.config/cabal/config
export CABAL_DIR=~/.config/cabal

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export CFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"




#print header so it shows when opening terminal
header
export PATH=/home/kimi/.meteor:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
