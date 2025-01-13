# export PATH="$HOME/.bin:$PATH"

export PATH=/opt/homebrew/bin:$PATH
# eval "$(/opt/homebrew/bin/brew shellenv)"
# Commenting out asdf, will be using rbenv for work
# source /opt/homebrew/opt/asdf/libexec/asdf.sh
# export PATH=~/homebrew/bin:${PATH}
# eval "$(~/homebrew/bin/rbenv init -)"
# eval "$(~/homebrew/bin/pyenv init --path)"
# eval "$(~/homebrew/bin/nodenv init -)"
export PATH=$HOME/.nodenv/shims:$HOME/.rbenv/shims:$HOME/.pyenv/shims:$PATH


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

export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add Postgres environment variables for CaseFlow
export POSTGRES_HOST=localhost
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
export NLS_LANG=AMERICAN_AMERICA.UTF8
export FREEDESKTOP_MIME_TYPES_PATH=~/homebrew/share/mime/packages/freedesktop.org.xml
export OCI_DIR=~/Downloads/instantclient_19_8
