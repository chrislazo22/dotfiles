export PATH="$HOME/.bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh Theme
ZSH_THEME="christheme"

# Case sensitive, trying this out
CASE_SENSITIVE="true"

# Zsh update reminder
zstyle ':omz:update' mode reminder

# Plugins
plugins=(tmux)

# Source
source $ZSH/oh-my-zsh.sh

# Editor of choice
export EDITOR='nvim' # Editor of choice

# No shared history between tmux panes
setopt nosharehistory

# For fuzzy search
source <(fzf --zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias claude="/Users/chrislazo/.claude/local/claude"
