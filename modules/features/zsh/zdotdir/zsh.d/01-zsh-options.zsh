# enable history substring search on Up/Down for current prefix
autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search    # Up arrow
bindkey '^[[B' down-line-or-beginning-search  # Down arrow
KEYTIMEOUT=10   # or lower, e.g. 1–20
# bindkey '^[[3;3~' kill-word
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match upper from lower case

#automatic dir pushing on stack (allows cd -2)
setopt AUTO_PUSHD
