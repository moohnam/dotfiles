mkdir -p ~/.vim ~/.vim/bundle ~/.vim/undo ~/.vim/colors
(cd ~/.vim/bundle; git clone https://github.com/VundleVim/Vundle.vim)
cp vimrc ~/.vim/
cp clang.vim ~/.vim/
echo "source ~/.vim/vimrc" >> ~/.vimrc
vim -c 'PluginInstall'
vim -c 'PluginUpdate'

