#!/bin/sh

cp -a ./configs/. ~

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

if [[ ! -n $(find ~/.vim/bundle/YouCompleteMe/ -name *.so) ]]; then
    sh ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
fi

source ~/.bash_profile
