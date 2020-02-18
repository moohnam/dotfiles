WD=$(pwd)
# TMUX INSTALL
if [ ! -d "./tmux" ] ; then
	git clone https://github.com/tmux/tmux.git
else
	cd tmux
	git pull
	cd ..
fi
(cd tmux; $SHELL autogen.sh; ./configure --bindir=$HOME/.local/bin/ --prefix=$HOME/.local/; make -j8 install)
cp -ir ../tmux_conf/* $HOME/
