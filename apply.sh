if [ ! -e ~/.vim/bundle/Vundle.vim ]
then
	echo "Downloading Vundle plugin..."
	mkdir -p ~/.vim ~/.vim/bundle ~/.vim/undo ~/.vim/colors
	(cd ~/.vim/bundle; git clone https://github.com/VundleVim/Vundle.vim)
	echo "source ~/.vim/vimrc" >> ~/.vimrc
fi

echo "Copying vim files..."
cp -i ./vim/* ~/.vim/
echo "Installing Plugins..."
vim -c 'PluginInstall'
vim -c 'PluginUpdate'

if [ $(grep "colors" ~/.vimrc | wc -c) -eq 0 ]
then
	echo "Adding Colrschemes..."
	echo "source ~/.vim/colors.vim" >> ~/.vimrc
fi 

echo "Install Complete."
