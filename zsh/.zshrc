. ~/z.sh

export XDG_CONFIG_HOME="$HOME/.config"

PROMPT='%F{cyan}%1~%f → '


export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/themes/catppuccin-latte-blue.yml"
alias lg='lazygit'
alias cl="clear"
alias ll="eza --icons --grid --group-directories-first -a"
alias x="claude --dangerously-skip-permissions"
alias cc="claude"
alias pip="pip3"
alias python="python3"

# 대소문자 구분 없는 탭 완성
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# nvm lazy load
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  nvm "$@"
}
node() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; node "$@"; }
npm() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npm "$@"; }
npx() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npx "$@"; }



export PATH="$HOME/.local/bin:$PATH"


# bun completions
[ -s "/Users/jeongjiwon/.bun/_bun" ] && source "/Users/jeongjiwon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
