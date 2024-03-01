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

### zsh
alias szsh='source ~/.zshrc'
alias vzsh='vim ~/.zshrc'
alias vim='nvim'
alias vi='vim'
alias rs="bundle exec rspec"
alias gcogem="gco Gemfile.lock"

### alias
alias aliasg='alias | grep' # search file name

### vim
alias vima='nvim *'

### rails
alias rsff='rspec --fail-fast'
alias rspec='bundle exec rspec'

### silver searcher
alias agg='ag -g'

### maxwell
alias load_temp='bin/rails loan_app_v2:repopulate_v2_templates'
alias hrc="heroku run 'rails console -- --noautocomplete' --remote"
