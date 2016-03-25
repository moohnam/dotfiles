WD = $(pwd)

# MAKE PERSONAL BINARY DIR
if [ ! -d "$HOME/bin" ] ; then
		mkdir "$HOME/bin"
    PATH="$HOME/bin:$PATH"
fi

cd $WD/scripts
# TMUX INSTALL
$SHELL install_tmux.sh

# VIM INSTALL
$SHELL install_vim.sh

# ZSH INSTALL
#$SHELL install_zsh.sh

# OH-MY-ZSH
#$SHELL install_omz.sh
