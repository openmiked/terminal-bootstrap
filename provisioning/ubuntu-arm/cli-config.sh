#--- Refresh Aliases, Functions, and P9K Configs ---#
rm -f ~/.zshrc
rm -rf ~/.zsh-configs 
mkdir ~/.zsh-configs
git clone https://github.com/openmiked/terminal-bootstrap.git ~/.zsh-configs/temp
cp ~/.zsh-configs/temp/provisioning/ubuntu-arm/scripts/* ~/.zsh-configs/
mv ~/.zsh-configs/.zshrc ~/.zshrc
rm -rf ~/.zsh-configs/temp