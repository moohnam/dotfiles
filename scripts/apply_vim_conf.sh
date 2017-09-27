if [ ! -e $HOME/.vim/bundle/Vundle.vim ]
then
	echo "Downloading Vundle plugin..."
	mkdir -p $HOME/.vim $HOME/.vim/bundle $HOME/.vim/undo $HOME/.vim/colors
	(cd $HOME/.vim/bundle; git clone https://github.com/VundleVim/Vundle.vim)
	echo "source $HOME/.vim/vimrc" >> $HOME/.vimrc
fi

echo "Copying vim files..."
cp -i ../vim_conf/* $HOME/.vim/
echo "Installing Plugins..."
vim -c 'PluginInstall'
vim -c 'PluginUpdate'

if [ $(grep "colors" $HOME/.vimrc | wc -c) -eq 0 ]
then
	echo "Adding Colorschemes..."
	echo "source $HOME/.vim/colors.vim" >> $HOME/.vimrc
fi 

echo "Install Complete."
