cp -i $(dirname "$0")/../omz_conf/custom.zsh $HOME/.oh-my-zsh/custom/custom.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
sed '/plugins/d' -i.bak ~/.zshrc
echo "source $HOME/.oh-my-zsh/custom/custom.zsh" >> $HOME/.zshrc
