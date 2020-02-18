WD=$(pwd)
# ZSH INSTALL
if [ ! -d "./zsh" ] ; then
	git clone https://github.com/zsh-users/zsh.git
else
	cd zsh
	git pull
	cd ..
fi
(cd zsh; Util/preconfig; ./configure --prefix=$HOME/.local/ --bindir=$HOME/.local/bin/; make -j8 install; echo "SHELL=$HOME/.local/bin/zsh\nexec $HOME/.local/bin/zsh -l" >> ~/.bash_profile)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
