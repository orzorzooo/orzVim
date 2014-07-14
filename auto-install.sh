#!/bin/sh
#參考vgod改的
VIMHOME=~/.vim

warn() {
	    echo "$1" 
}

die() {
			warn "$1"
			mkdir ~/原先vim備份
			cp ~/.vimrc ~/原先vim備份/vimrc
			rm ~/.vimrc
}

die2(){
	    warn "$1"
			cp -r $VIMHOME ~/原先vim備份/
			rm -rf $VIMHOME
}

[ -e "~/.vimrc"  ] && die ".vimrc已經存在!我幫你COPY到家目錄/原先vim備份!"
[ -e "$VIMHOME"  ] && die2 ".vim已經存在啦!!我幫你COPY到家目錄原先/vim備份!"

git clone git://github.com/orzorzooo/orzVim.git "$VIMHOME"

cd ~
ln -s $VIMHOME/vimrc ~/.vimrc

vim -c :PluginInstall +qall


echo "你的vim安裝完成啦!"
