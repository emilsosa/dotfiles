# Keybindings
bindkey "^O" autosuggest-accept
bindkey '^R' fzf-history-widget

export ZVM_VI_ESCAPE_BINDKEY=jk
export ZSH_CURSOR_STYLE_ENABLED=false
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,bold,underline"
export POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
export LANG=en_US.UTF-8
export EDITOR=nvim

# Load Antigen
source ~/.antigen/antigen.zsh
# Load Antigen configurations
antigen init ~/.antigenrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zshrc_hooks
if [ -f ~/.environment ]; then
	source ~/.environment
fi

# Alises
alias cls='printf "\033c"'
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
