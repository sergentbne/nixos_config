if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export EZA_CONFIG_DIR="~/.config/eza"

export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=border:#403d52,header:#31748f,gutter:#191724
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa
	--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
export FZF_DEFAULT_COMMAND='fd --type file --hidden'

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export HISTSIZE=2000
export SAVEHIST=100000
export HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
export HOMEBREW_NO_ENV_HINTS=1
export GPG_TTY=$(tty)
export DO_NOT_TRACK=true
