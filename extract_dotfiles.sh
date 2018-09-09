#!/bin/sh
CWD=$PWD
cp -fr .tmux/ ~/
cp -f .tmux.conf ~/
cp -f .bash* ~/
cp -f .gitconfig ~/
cp -f .profile ~/
cp -fr scripts/ ~/
cp -f .vimrc ~/
cp -fr .vim ~/
cp -fr .jupyter/ ~/
chmod +x setup_jupyter_vim.sh
cd ~/.jupyter/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mycert.pem -out mycert.pem
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd $CWD
./setup_jupyter_vim.sh
