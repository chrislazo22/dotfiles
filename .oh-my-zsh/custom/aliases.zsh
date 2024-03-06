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
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gst='git status'

### maxwell (could delete)
alias load_temp='bin/rails loan_app_v2:repopulate_v2_templates'
alias hrc="heroku run 'rails console -- --noautocomplete' --remote"

### rails
alias rsff='rspec --fail-fast'
alias rspec='bundle exec rspec'

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
