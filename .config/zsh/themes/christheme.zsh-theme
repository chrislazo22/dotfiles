local host_name="%{$fg_bold[cyan]%}chris"

PROMPT='${host_name} %{$fg_bold[white]%}in %{$fg[green]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[white]%} % %{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}] %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}]%{$reset_color%}"

export LSCOLORS="bxfxcxdxbxegedabagacad"
export LS_COLORS='di=31:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export GREP_COLOR='1;33'
