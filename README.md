# Chris' MacBook Setup

## Terminal

### Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew upgrade
brew install asdf fzf gh git neovim node tmux the_silver_searcher yadm yarn zsh
```

### Make it Fancy
#### OhMyZsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

### Clone dotfiles
```bash
git clone https://github.com/chrislazo22/dotfiles.git
```
