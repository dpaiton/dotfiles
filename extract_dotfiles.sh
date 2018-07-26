#!/bin/sh
cp -r .jupyter/ ~/
cd .jupyter/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mycert.pem -out mycert.pem
cd ~/
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
