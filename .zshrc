export PATH="$HOME/.bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/asdf/libexec/asdf.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh Theme
ZSH_THEME="christheme"

# Case sensitive, trying this out
CASE_SENSITIVE="true"

# Zsh update reminder
zstyle ':omz:update' mode reminder

# Plugins
plugins=(git rails tmux asdf)

# Source
source $ZSH/oh-my-zsh.sh

# Editor of choice
export EDITOR='vim' # Editor of choice

# No shared history between tmux panes
setopt nosharehistory

# For fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
