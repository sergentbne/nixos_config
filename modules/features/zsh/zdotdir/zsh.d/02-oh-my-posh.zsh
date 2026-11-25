THEME="~/.config/oh-my-posh/catppuccin_macchiato.json"

# Path to your oh-my-zsh installation.
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $THEME)"
fi
