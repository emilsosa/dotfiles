# Load Antigen
source ~/.antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

eval $(thefuck --alias)
eval $(thefuck --alias fk)

export LANG=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias cls='printf "\033c"'

if [ -f ~/.environment ]; then
	source ~/.environment
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
