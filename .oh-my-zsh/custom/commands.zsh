# Custom Silver Searcher

agi() {
  local dirs_to_ignore=$1
  shift
  ag --ignore-dir="$dirs_to_ignore" "$@"
}

