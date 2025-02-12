# Keybindings
bindkey "^O" autosuggest-accept
bindkey '^r' fzf-history-widget

export ZVM_VI_ESCAPE_BINDKEY=jk
export ZSH_CURSOR_STYLE_ENABLED=false

# Load Antigen
source ~/.antigen/antigen.zsh

# export ZSH_TMUX_AUTOSTART=true
# export ZSH_TMUX_AUTONAME_SESSION=true

# Load Antigen configurations
antigen init ~/.antigenrc

export LANG=en_US.UTF-8
export EDITOR=nvim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zshrc_hooks

if [ -f ~/.environment ]; then
	source ~/.environment
fi

# Alises
alias cls='printf "\033c"'
alias cdz='z'
alias ff='find . -type f | fzf | xargs -I {} sh -c 'open "$(dirname "{}")"''
alias fcd='cd $(find . -type d -print | fzf)'
alias n='nvim'
alias ne='NVIM_APPNAME=nvim.emilsosa nvim'

# Setup plugins
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(thefuck --alias fk)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
