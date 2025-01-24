# General -------------------------------------------------
# Path Settings
export PATH="$HOME/.bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"

# Editor
export EDITOR='nvim' # Editor of choice

# External sources
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/asdf/libexec/asdf.sh
source <(fzf --zsh) # Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Config

CASE_SENSITIVE="true" # Case sensitive, trying this out
setopt nosharehistory # No shared history between tmux panes

# Theme ---------------------------------------------------
local host_name="%{$fg_bold[cyan]%}chris"

PROMPT='${host_name} %{$fg_bold[white]%}in %{$fg[green]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[white]%} % %{$reset_color%}
$ '

# Git prompt formatting
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}] %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}]%{$reset_color%}"

# Git prompt function
git_prompt_info() {
  local ref
  ref=$(git symbolic-ref HEAD 2>/dev/null) || return
  ref=${ref#refs/heads/}
  # Limit the length of the branch name
  ref=${ref:0:20}  # Truncate branch name to 20 characters

  echo -n "${ZSH_THEME_GIT_PROMPT_PREFIX}${ref}${ZSH_THEME_GIT_PROMPT_SUFFIX}"

  if git diff --quiet 2>/dev/null; then
    echo "${ZSH_THEME_GIT_PROMPT_CLEAN}"
  else
    echo "${ZSH_THEME_GIT_PROMPT_DIRTY}"
  fi
}

export LSCOLORS="bxfxcxdxbxegedabagacad"
export LS_COLORS='di=31:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export GREP_COLOR='1;33'

# Aliases ------------------------------------------

# Alias (misc)
alias aliasg='alias | grep' # search file name

# git
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias glo='git log --oneline --decorate'
alias gst='git status'
alias gl='git pull'
alias gb='git branch'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

# Rails
alias rsff='rspec --fail-fast'
alias rspec='bundle exec rspec'
alias rrg='rails routes | grep '
alias gcogem="gco Gemfile.lock"

# Silver searcher
alias agg='ag -g'

# Nvim
alias vim='nvim'
alias vi='vim'
alias vima='nvim *'

# zsh
alias szsh='source ~/.zshrc'
alias vzsh='vim ~/.zshrc'
alias rs="bundle exec rspec"

### python
alias python='python3'

### yadm
alias y='yadm'
alias ya='yadm add'
alias yc='yadm commit'
alias ys='yadm status'
alias yp='yadm push'
alias yd='yadm diff'
alias yl='yadm pull'
alias yco='yadm checkout'
alias ycb='yadm checkout -b'
alias yb='yadm branch'

# Functions -----------------------------------------------

agi() {
  local dirs_to_ignore=$1
  shift
  ag --ignore-dir="$dirs_to_ignore" "$@"
}
