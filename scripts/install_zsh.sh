WD=$(pwd)
# ZSH INSTALL
if [ ! -d "./zsh" ] ; then
	git clone https://github.com/zsh-users/zsh.git
else
	cd zsh 
	git pull
	cd ..
fi
(cd zsh; Util/preconfig; ./configure --prefix=$HOME/.zsh/ --bindir=$HOME/bin/; make -j8 install)
