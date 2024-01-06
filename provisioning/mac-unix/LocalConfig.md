# Terminal Configuration

1. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. After Homebrew is installed run the following commands to add it to `PATH`:

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/openmike/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

3. Install dependencies: `brew install bat jq ruby zsh fontconfig neofetch lolcat gotop ripgrep sd tokei`
4. Install Oh My ZSH, it's plug-ins, and the P9K prompt theme:

```
mkdir .cli-config
curl -Lo .cli-config/omz-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh .cli-config/omz-install.sh --unattended
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

5. Install Color LS: `sudo gem install colorls`
6. Install Nerd Fonts:

```
git clone https://github.com/ryanoasis/nerd-fonts.git ~/downloads/nerd-fonts
cd ~/downloads/nerd-fonts/ && ./install.sh
```

7. Add HashiCorp tab to Homebrew: `brew tap hashicorp/tap`
8. Install Terraform: `brew install hashicorp/tap/terraform`
9. Download .NET CLI from: https://dotnet.microsoft.com/en-us/download/dotnet/5.0
10. Install NVM with: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`
11. Next install the latest version of Node: `nvm install node`
12. Run the following commands to pull down the config repo, copy over all pertinent scripts, and clean up afterwards:

```
rm -f ~/.zshrc
rm -rf ~/.cli-config
mkdir ~/.cli-config
git clone https://gitlab.com/openmiked/public/tools/cli-configs.git ~/.cli-config/temp
cat ~/.cli-config/temp/aliases/base.sh \
    ~/.cli-config/temp/aliases/docker.sh \
    ~/.cli-config/temp/aliases/dotnet.sh \
    ~/.cli-config/temp/aliases/git.sh \
    ~/.cli-config/temp/aliases/kubectl.sh \
    ~/.cli-config/temp/aliases/ui-addons.sh \
    ~/.cli-config/temp/aliases/terraform.sh > ~/.cli-config/aliases.sh
cat ~/.cli-config/temp/functions/base.sh >> ~/.cli-config/functions.sh
cat ~/.cli-config/temp/p9k-config/base.sh \
    ~/.cli-config/temp/p9k-config/2-line-prompt.sh \
    ~/.cli-config/temp/p9k-config/status.sh \
    ~/.cli-config/temp/p9k-config/vcs.sh > ~/.cli-config/p9k-config.sh
rm -rf ~/.cli-config/temp
```

13. Create a new `.zshrc` file with the following content:

```
#--- ZSH: Plug-ins ---#
plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
)

#--- Local Environment Configuration ---#
autoload -U compinit
compinit

export CONFIG_ENV="mac-unix"
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:/usr/local/terraform
export PATH=$PATH:/usr/local/share/dotnet/x64

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
source $(dirname $(gem which colorls))/tab_complete.sh
source "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k/powerlevel9k.zsh-theme"

compdef _git printGitLogPrettily=git-log

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```
