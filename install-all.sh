#!/bin/sh

VIM_HOME=~/.vim
VIM_ROBIN_HOME=~/.vim_robin

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

# validate
[ -e $VIM_ROBIN_HOME ] && die "$VIM_ROBIN_HOME already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

# clone vimrc
git clone git://github.com/iamslash/vim_robin.git $VIM_ROBIN_HOME
ln -s "$VIM_ROBIN_HOME/.vimrc" ~/.vimrc
mkdir "$VIM_HOME"
mkdir "$VIM_HOME/tags"

# clone Vundle 
mkdir "$VIM_HOME/bundle"
git clone https://github.com/gmarik/Vundle.vim.git "$VIM_HOME/bundle/Vundle.vim"  

#
vim +PluginInstall +qall  

echo "vim_robin is installed."
