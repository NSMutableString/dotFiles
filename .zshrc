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
alias xcdd='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias ls='ls -allG'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias cb='carthage bootstrap'

# Set the rbenv
eval "$(rbenv init -)"

# Ruby exports (This tells gem to place its gems within the user’s home folder, not in a system-wide location)
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# Hide computername for current user to have cleaner terminal path
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context)

# Open XCode workspace or project with latest version
xc() {
  myarray=(`find ./ -maxdepth 1 -name "*.xcworkspace"`)
  if [ ${#myarray[@]} -gt 0 ]; then
    open -a "/Applications/Xcode.app" *.xcworkspace
  else
    open -a "/Applications/Xcode.app" *.xcodeproj
  fi
}
