#!/bin/sh
cp -r .jupyter/ ~/
cp -r .tmux/ ~/
cp .tmux.conf ~/
cp .bash* ~/
cp .gitconfig ~/
cp .profile ~/
cp -r scripts/ ~/
cp .vimrc ~/
cp -r .vim ~/
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
