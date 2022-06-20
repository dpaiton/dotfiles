#!/bin/sh
cwd=$(pwd)
cp -fr .tmux ~/
cp -f .tmux.conf ~/
cp -f .bash* ~/
cp -f .gitconfig ~/
cp -f .profile ~/
cp -fr scripts ~/
chmod +x ~/scripts/list_drives.sh
chmod +x ~/scripts/setup_tmux.sh
chmod +x ~/scripts/sshcolour.sh
cp -f .vimrc ~/
cp -fr .vim ~/
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd $cwd
./setup_jupyter_vim.sh
