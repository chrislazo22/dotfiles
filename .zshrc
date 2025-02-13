# export PATH="$HOME/.bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.nodenv/shims:$HOME/.rbenv/shims:$HOME/.pyenv/shims:$PATH

# Add Postgres environment variables for CaseFlow
export POSTGRES_HOST=localhost
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres
export NLS_LANG=AMERICAN_AMERICA.UTF8

export OCI_DIR=~/Downloads/instantclient_23_3
export DYLD_LIBRARY_PATH=~/Downloads/instantclient_23_3


# added for case folder
POSTGRES_PORT=5432
REDIS_URL_CACHE=redis://localhost:16379/0/cache/
REDIS_URL_SIDEKIQ=redis://localhost:16379

#AWS Localstack 
export AWS_DEFAULT_REGION="us-east-1" 
export AWS_ACCESS_KEY_ID="dummykeyid" 
export AWS_SECRET_ACCESS_KEY="dummysecretkey"   
export AWS_SQS_ENDPOINT="http://localhost:4576"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh Theme
ZSH_THEME="christheme"

# Case sensitive, trying this out
CASE_SENSITIVE="true"

# Zsh update reminder
# zstyle ':omz:update' mode reminder

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

. /opt/homebrew/opt/asdf/libexec/asdf.sh
