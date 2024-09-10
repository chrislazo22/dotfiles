# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

### CUSTOM ALIASES


### alias (misc)
alias aliasg='alias | grep' # search file name

### git
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='clear; git diff'
alias glo='git log --oneline --decorate'
alias gst='git status'
alias gl='git pull'
alias gb='git branch'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

### maxwell (could delete)
alias load_temp='bin/rails loan_app_v2:repopulate_v2_templates'
alias hrc="heroku run 'rails console -- --noautocomplete' --remote"

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
