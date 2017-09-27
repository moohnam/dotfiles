WD=$(dirname "$0")

# MAKE PERSONAL BINARY DIR
if [ ! -d "$HOME/.local" ] ; then
		mkdir "$HOME/.local"
        mkdir "$HOME/.local/bin
    PATH="$HOME/.local/bin:$PATH"
fi

cd $WD/scripts
# VIM INSTALL
$SHELL install_vim.sh

# ZSH INSTALL
$SHELL install_zsh.sh

# OH-MY-ZSH
$SHELL install_omz.sh

# TMUX INSTALL
$SHELL install_tmux.sh

