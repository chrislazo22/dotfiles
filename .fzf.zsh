# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/chrislazo/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/chrislazo/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/Users/chrislazo/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/Users/chrislazo/.fzf/shell/key-bindings.zsh"
