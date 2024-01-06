#--- Install Choco Dependencies ---#
choco install bat ripgrep sd-cli
cargo install tokei
sudo apt-get update
sudo apt install build-essential gcc jq neofetch ruby-full zsh
#--- Install all ZSH configurations ---#
mkdir .local-config
LOCAL_CONFIG="~/.local-config"
curl -Lo .local-config/omz-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh .local-config/omz-install.sh --unattended
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Nerd-Fonts
git clone https://github.com/ryanoasis/nerd-fonts.git ~/downloads/nerd-fonts
cd ~/downloads/nerd-fonts/ && ./install.sh
