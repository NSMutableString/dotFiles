# Path to your oh-my-zsh installation.
export ZSH="/Users/bramhuenaerts/.oh-my-zsh"

ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias doc='cd ~/documents'
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias gocoverage='go test -coverprofile=coverage.out;go tool cover -html=coverage.out'
alias xcdd='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias ls='ls -allG'
alias gitl='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C($
alias gitfu='git reset --hard origin/master'
alias gitrefresh='git fetch origin'

# Set the rbenv
eval "$(rbenv init -)"

# Set the GOPATH for the dev package manager so we can support dep ensure -v
export GOPATH=/Users/bramhuenaerts/Documents/go
export PATH=$GOPATH/bin:$PATH
