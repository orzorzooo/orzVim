
rz's vim setting

---

##裝起來的樣子

覺得有些情況下，配置過後的vim比sublime text好用，當然這是個人習慣問題
為了方便以後更換環境也能快速把vim相關設定建立起來，參考高見龍先生以及vgod他們的方式，作了一個一鍵安裝並改成用vundle管理套件

![image](https://raw.githubusercontent.com/orzorzooo/orzVim/master/image/screen.jpg)


##Install
	
	curl -o - https://raw.githubusercontent.com/orzorzooo/orzVim/master/auto-install.sh | sh

會將.vim以及.vimrc備份到~/vim備份的資料夾

plugin使用[vundle](https://github.com/gmarik/Vundle.vim)進行安裝及管理

plugin 的修改及安裝都在~/.vimrc或是~/.vim/vimrc內(其實是一樣的)

相關設定請看.vimrc

##Plugins

還沒整理

##Plugins update

	vim
	:PluginUpdate
	
	

##Color Scheme

* [vivify](http://bytefluent.com/vivify/)


