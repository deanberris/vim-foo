#!/bin/sh

# Copyright 2009 (c) Dean Michael Berris
# Distributed under the Boost Software License 1.0
# See LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt
#
CWD=`pwd`

if [ -d $HOME/.vim ]; then
    echo "Moving existing ~/.vim directory to ~/.vim-old"
    mv ~/.vim ~/.vim-old
fi
ln -s $CWD/dot-vim ~/.vim

# Install YCM -- this may take a while.
cd $CWD/dot-vim/bundle/YouCompleteMe && ./install.sh --clang-completer && cd $CWD

if [ -e $HOME/.vimrc ]; then
    echo "Moving existing ~/.vimrc to ~/.vimrc-old"
    mv ~/.vimrc ~/.vimrc-old
fi
ln -s $CWD/vimrc ~/.vimrc

# Set up the Vundle bundles.
vim +BundleInstall +qall

# Set up the pathogen bundles.
vim +Helptags +qall
