# Clone zcomet if necessary
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin --depth 1
fi

# Source zcomet.zsh
source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh


zcomet load nix-community/nix-zsh-completions
zcomet load fdellwing/zsh-bat
zcomet load zpm-zsh/clipboard
zcomet load zsh-users/zsh-completions
zcomet load goarano/zsh-lazy-load
zcomet load Aloxaf/fzf-tab

#forked from krahlos/xdg-basedirs
zcomet load sergentbne/xdg-basedirs
