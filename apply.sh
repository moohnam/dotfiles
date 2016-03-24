if [ ! -e ~/.vim/bundle/Vundle.vim ]
then
	mkdir -p ~/.vim ~/.vim/bundle ~/.vim/undo ~/.vim/colors
	(cd ~/.vim/bundle; git clone https://github.com/VundleVim/Vundle.vim)
	echo "source ~/.vim/vimrc" >> ~/.vimrc
fi

cp -i vimrc ~/.vim/
cp -i *.vim ~/.vim/
vim -c 'PluginInstall'
vim -c 'PluginUpdate'

if [ $(grep "colors.vim" ~/.vimrc | wc -c) -gt 0 ]
then
	echo "source ~/.vim/colors.vim >> ~/.vimrc"
fi 
