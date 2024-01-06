#--- ZSH: Plug-ins ---#
plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
)

#--- Local Environment Configuration ---#
autoload -U compinit
compinit

export CONFIG_ENV="ubuntu"

CASE_SENSITIVE="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
MY_NI='eth0'
MY_OS_ICON='\uf31b' # 
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source $HOME/.cli-config/functions.sh
source $HOME/.cli-config/p9k-config.sh
source $HOME/.cli-config/aliases.sh
source <(kubectl completion zsh)
source $(dirname $(gem which colorls))/tab_complete.sh
source "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k/powerlevel9k.zsh-theme"

compdef _git printGitLogPrettily=git-log

# direnv
eval "$(direnv hook zsh)"
# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# SDK Manager
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Node.js Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export YVM_DIR="$HOME/.yvm"
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh
