# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jakeo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

#PATH=$PATH:$HOME/dev/play-2.2.3  # scala play framework
PATH=$PATH:$HOME/bin
alias higr="history | grep"
alias bundle="nocorrect bundle"
alias lsg="ls -a | grep"
alias ls="ls -laGAF --color --group-directories-first"
alias fif="grep --color=always -rn -C 1"
alias gg="git grep --break --heading --untracked --color=auto -p -1"
alias tree="tree -C -I target"
#export PATH="$HOME/.rbenv/bin:$PATH"

source $HOME/.awsrc

#export PATH="$PATH:$HOME/dev/gradle-2.3/bin"
bindkey "^R" history-incremental-pattern-search-backward
#xset r rate 250 50
