#!/bin/sh

VIMHOME=~/.vim
VIM_ROBIN_HOME=~/vim_robin

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

# validate
[ -e "~/vimrc" ] && die "~/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

# clone vimrc
git clone git://github.com/iamslash/vimrc.git "$VIM_ROBIN_HOME"
ln -s "$VIM_ROBIN_HOME/.vimrc" ~/.vimrc
mkdir "$VIMHOME/tags"

# clone Vundle 
mkdir "$VIMHOME"
mkdir "$VIMHOME/bundle"
git clone https://github.com/gmarik/Vundle.vim.git "$VIMHOME/bundle/Vundle.vim"  

#
vim +PluginInstall +qall  

echo "vim_robin is installed."
