WD=$(pwd)
# VIM INSTALL
if [ ! -d "./vim" ] ; then
	git clone https://github.com/vim/vim.git
else
	cd vim 
	git pull
	cd ..
fi
(cd vim; 
	./configure --with-features=huge \
              --enable-multibyte \
              --enable-pythoninterp \
              --enable-gui=gtk2 \
              --bindir=$HOME/bin \
							--prefix=$HOME/.vim;
make -j8 install )
