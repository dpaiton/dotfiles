#!/bin/sh
cwd=$(pwd)
jupyter_dir=$(jupyter --data-dir)

mkdir -p $jupyter_dir/nbextensions
cd $jupyter_dir/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
jupyter nbextension enable vim_binding/vim_binding

cp -fr .jupyter/* $jupyter_dir
cd ~/$jupyter_dir
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mycert.key -out mycert.pem

cd $cwd
