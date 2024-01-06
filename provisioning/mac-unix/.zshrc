#--- ZSH: Plug-ins ---#
plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
)

#--- Local Environment Configuration ---#
autoload -U compinit
compinit

export CONFIG_ENV="mac-unix"
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:/usr/local/terraform

CASE_SENSITIVE="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
MY_NI='eth0'
MY_OS_ICON='\uf179' # 
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source $HOME/.cli-config/functions.sh
source $HOME/.cli-config/p9k-config.sh
source $HOME/.cli-config/aliases.sh
source <(kubectl completion zsh)
source $(dirname $(gem which colorls))/tab_complete.sh
source "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k/powerlevel9k.zsh-theme"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

compdef _git printGitLogPrettily=git-log

eval "$(direnv hook zsh)"