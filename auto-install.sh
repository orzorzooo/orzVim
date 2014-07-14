#!/bin/sh
#參考vgod改的
VIMHOME=~/.vim

if [ -e .vimrc  ]; then mv .vimrc .vimrc_bak; fi
if [ -e .vim  ]; then mv .vim .vim_bak; fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cd ~
ln -s $VIMHOME/vimrc ~/.vimrc

vim -c :PluginInstall +qall


echo "你的vim安裝完成啦!"
