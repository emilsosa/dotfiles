# Load Antigen
source ~/.antigen/antigen.zsh

# Keybindings
bindkey "^O" autosuggest-accept

# Load Antigen configurations
antigen init ~/.antigenrc

export LANG=en_US.UTF-8
export EDITOR=nvim
export ZVM_CURSOR_STYLE_ENABLED=false

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

# Setup plugins
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(thefuck --alias fk)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
