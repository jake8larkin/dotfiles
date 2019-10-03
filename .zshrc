export VISUAL=vim
export EDITOR=vim

# ZSH configuration

# add custom zsh function path, contains my functions
fpath=( "$HOME/.zprompts/" $fpath )

# parameter expansion, command substitution and arithmetic expansion are performed in prompts
setopt promptsubst

# functions to get git status in a directory
source ~/.zprompts/git.zsh

# load colors zshr plugin
autoload -U colors && colors

# zsh completion and prompt plugsin
autoload -Uz compinit promptinit
compinit
promptinit
prompt jake

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"


# enable highlight completion selection
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# enable history
export HISTSIZE=10000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
# zsh history only output 15 entries by default.  history N   lists all the entries since N
#  see https://stackoverflow.com/questions/26846738/zsh-history-is-too-short
alias history="history 1"   

# automatically do cd if a directory is called
setopt autocd
# regex style globing
setopt extendedglob
# autocorrection of commands
#setopt correctall

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH=$HOME/swd/go
alias ls='ls -Glah'
alias gg="git grep --break --heading --untracked --color=auto -p -1"
alias higr="history | grep"


bindkey "^R" history-incremental-pattern-search-backward
#xset r rate 250 50

# zsh  zle  vi mode
bindkey -v

mkdircd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

## golang
export GOPATH="/Users/jake/swd/go"
export PATH="$PATH:$GOPATH/bin"

# various homebrew openssl installation recommendations
# export PATH="/usr/local/opt/openssl/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

