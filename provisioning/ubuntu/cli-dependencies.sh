#--- Install Yum Dependencies ---#
sudo apt-add-repository ppa:yubico/stable
sudo apt-get update
sudo apt install build-essential gcc jq neofetch ruby-full zsh cargo yubikey-manager
cargo install bat ripgrep sd tokei bottom
pip3 install pre-commit
#--- Install Homebrew ---#
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zhrc
#--- brew install ---#
brew install hidetatz/tap/kubecolor
#--- Install all ZSH configurations ---#
mkdir .local-config
LOCAL_CONFIG="~/.local-config"
curl https://sh.rustup.rs -sSf | sh
curl -Lo .local-config/omz-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh .local-config/omz-install.sh --unattended
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Nerd-Fonts
git clone https://github.com/ryanoasis/nerd-fonts.git ~/downloads/nerd-fonts
cd ~/downloads/nerd-fonts/ && ./install.sh
# Install terraform-docs
sudo curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/v0.16.0/terraform-docs-v0.16.0-$(uname)-amd64.tar.gz
sudo tar -xzf terraform-docs.tar.gz
sudo chmod +x terraform-docs
sudo mv terraform-docs /usr/local/bin/terraform-docs