### CUSTOM ALIASES

### alias (misc)
alias aliasg='alias | grep' # search file name

### git
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias glo='git log --oneline --decorate --reverse'
alias gst='git status'
alias gl='git pull'
alias gb='git branch'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias grs='git restore --staged'

### rails
alias rsff='rspec --fail-fast'
alias rspec='bundle exec rspec'
alias rrg='rails routes | grep '

### silver searcher
alias agg='ag -g'

### vim
alias vima='nvim *'

### zsh
alias szsh='source ~/.zshrc'
alias vzsh='vim ~/.zshrc'
alias vim='nvim'
alias vi='vim'
alias rs="bundle exec rspec"
alias gcogem="gco Gemfile.lock"

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
