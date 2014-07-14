#!/bin/sh
#參考vgod改的
VIMHOME=~/.vim

mkdir ~/vim備份
mv ~/.vimrc ~/vim備份/原先的.vimrc
mv ~/.vim ~/vim備份/vim/
mv ~/.vim/vimrc ~/vim備份/vimrc
rm ~/.vimrc
rm -rf ~/.vim

git clone https://github.com/orzorzooo/orzVim.git ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~
ln -s $VIMHOME/vimrc ~/.vimrc

vim -c :PluginInstall +qall


echo "你的vim安裝完成啦!"
