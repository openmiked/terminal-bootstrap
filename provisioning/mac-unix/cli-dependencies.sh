#--- Install Brew Dependencies ---#
sudo apt-get update
sudo apt install build-essential gcc jq neofetch ruby-full zsh
brew tap cjbassi/gotop
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew install \
    bat \
    jq \
    ruby \
    zsh \
    dos2unix \
    fontconfig \
    brew install 
    neofetch \
    lolcat \
    btop \
    ripgrep \
    sd \
    tokei \
    ykman
#--- Install all ZSH configurations ---#
mkdir .cli-config
curl -Lo .cli-config/omz-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh .cli-config/omz-install.sh --unattended
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Nerd-Fonts
git clone https://github.com/ryanoasis/nerd-fonts.git ~/downloads/nerd-fonts
cd ~/downloads/nerd-fonts/ && ./install.sh

