#!/bin/sh
#參考vgod改的
#有些變數還沒套用，晚點再搞
VIMHOME=~/.vim

#備份原先vim資料
mkdir ~/vim.backup
mv ~/.vimrc ~/vim.backup/原先的.vimrc
mv ~/.vim ~/vim.backup/vim/
mv ~/.vim/vimrc ~/vim.backup/vimrc

#移除原先vim資料
rm ~/.vimrc
rm -rf ~/.vim

#copy orzVim相關內容，如coloe theme, vimrc
git clone https://github.com/orzorzooo/orzVim.git ~/.vim

#使用vindle 管理外掛套件
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#將~/.vimrc 以及.vim/vimrc作連結
cd ~
ln -s $VIMHOME/vimrc ~/.vimrc

#啟動vundle Plugininstall來安裝套件
vim -c :PluginInstall +qall


echo "你的vim安裝完成啦!"
