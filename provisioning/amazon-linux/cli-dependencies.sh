#--- Create Local Config directory ---#
mkdir .local-config
#--- Download any files necessary for installation ---#
sudo curl https://sh.rustup.rs -sSf | sh
sudo curl -Lo gotop.tgz https://github.com/xxxserxxx/gotop/releases/download/v3.5.0/gotop_v3.5.0_linux_amd64.tgz
sudo curl -Lo .local-config/omz-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sudo curl -Lo /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
#--- Install Amazon Extra and Yum Dependencies ---#
sudo amazon-linux-extras install -y epel ruby2.6
sudo yum install -y gcc git gpg jq make neofetch ruby-devel zsh
#--- Set default shell to ZSH ---#
SH_CONFIG_LINE_NUMBER=$(grep -n ec2-user /etc/passwd | awk -F':' '{print $1}')
sudo sed "${SH_CONFIG_LINE_NUMBER},${SH_CONFIG_LINE_NUMBER} s/bash/zsh/g" -i /etc/passwd
#--- Install ZSH, it's plug-ins and themes, and all other CLI tools ---#
sh .local-config/omz-install.sh --unattended
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#--- Install Rust console tools---#
cargo install bat ripgrep sd tokei
#--- Install Ruby console tools---#
sudo gem install io-console
sudo gem install colorls
#--- Install Go-lang console tools---#
mkdir .go
tar zxvf gotop.tgz -C .go
rm -f gotop.tgz