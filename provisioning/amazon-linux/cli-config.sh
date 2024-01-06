#--- Refresh Aliases, Functions, and P9K Configs ---#
rm -f ~/.zshrc
rm -rf ~/.cli-config 
mkdir ~/.cli-config
git clone https://gitlab.com/openmiked/public/tools/cli-configs.git ~/.cli-config/temp
cat ~/.cli-config/temp/aliases/base.sh \
    ~/.cli-config/temp/aliases/docker.sh \
    ~/.cli-config/temp/aliases/git.sh \
    ~/.cli-config/temp/aliases/kubectl.sh \
    ~/.cli-config/temp/aliases/ui-addons.sh > ~/.cli-config/aliases.sh
cat ~/.cli-config/temp/functions/base.sh >> ~/.cli-config/functions.sh
cat ~/.cli-config/temp/p9k-config/base.sh \
    ~/.cli-config/temp/p9k-config/2-line-prompt.sh \
    ~/.cli-config/temp/p9k-config/status.sh \
    ~/.cli-config/temp/p9k-config/vcs.sh > ~/.cli-config/p9k-config.sh
cp ~/.cli-config/temp/provisioning/amazon-linux/.zshrc ~/.zshrc
rm -rf ~/.cli-config/temp