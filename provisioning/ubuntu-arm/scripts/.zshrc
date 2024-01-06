#--- ZSH: Plug-ins ---#
plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
)

#--- Local Environment Configuration ---#
autoload -U compinit
compinit

export CONFIG_ENV="ubuntu"
export TERM="xterm-256color"

CASE_SENSITIVE="false"
COMPLETION_WAITING_DOTS="true"
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
MY_OS_ICON='\uf31b' # 
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source $HOME/.zsh-configs/functions.sh
source $HOME/.zsh-configs/prompt.sh
source $HOME/.zsh-configs/aliases.sh
source $(dirname $(gem which colorls))/tab_complete.sh
source "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k/powerlevel9k.zsh-theme"

compdef _git printGitLogPrettily=git-log

eval "$(direnv hook zsh)"

