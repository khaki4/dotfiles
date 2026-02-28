. ~/z.sh

export XDG_CONFIG_HOME="$HOME/.config"

PROMPT='%F{cyan}%1~%f → '


export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/themes/catppuccin-latte-blue.yml"
alias lg='lazygit'
alias cl="clear"
alias ll="eza --icons --grid --group-directories-first"
alias x="claude --dangerously-skip-permissions"
alias cc="claude"
alias pip="pip3"
alias python="python3"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



export PATH="$HOME/.local/bin:$PATH"


# bun completions
[ -s "/Users/jeongjiwon/.bun/_bun" ] && source "/Users/jeongjiwon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
