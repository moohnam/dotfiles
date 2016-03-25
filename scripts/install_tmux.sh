WD=$(pwd)
# TMUX INSTALL
if [ ! -d "./tmux" ] ; then
	git clone https://github.com/tmux/tmux.git
else
	cd tmux
	git pull
	cd ..
fi
(cd tmux; $SHELL autogen.sh;
./configure --bindir=$HOME/bin/ --prefix=$HOME/.tmux;
make -j8 install)
