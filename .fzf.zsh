# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/chrislazo/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/chrislazo/.fzf/bin"
fi

gdf() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

gaf() {
    local GIT_ROOT FILES_TO_ADD FILE
    GIT_ROOT=$(git rev-parse --show-toplevel)
    PREVIEW="git diff $@ --color=always -- {-1}"
    FILES_TO_ADD=$(git status --porcelain | grep -v '^[AMD]' | sed s/^...// | fzf -m --ansi --preview $PREVIEW)

    if [[ -n $FILES_TO_ADD ]]; then
        for FILE in ${(f)FILES_TO_ADD}; do
            git add "$@" "$GIT_ROOT/$FILE"
        done
    else
        echo "Nothing to add"
    fi
}

# Auto-completion
# ---------------
source "/Users/chrislazo/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/Users/chrislazo/.fzf/shell/key-bindings.zsh"

source <(fzf --zsh)
