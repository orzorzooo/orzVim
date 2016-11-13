"啟動pathogen vim套件管理外掛
"execute pathogen#infect()

"改用vundle 作為外掛管理套件 -20140714
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"安裝的外掛
Plugin 'bling/vim-airline'	 "vim-airline 狀態列高亮
Plugin 'mattn/emmet-vim'		 "emmet-vim 	
Plugin 'MarcWeber/vim-addon-mw-utils' "snipmate
Plugin 'tomtom/tlib_vim'  						"snipmate
Plugin 'garbas/vim-snipmate'				  "snipmate
Plugin 'honza/vim-snippets'					 	"snipmate
Plugin 'scrooloose/nerdtree'				 	"nerdtree
Plugin 'jiangmiao/auto-pairs'					"auto-pairs
Plugin 'kien/ctrlp.vim'  									"ctrlp
Plugin 'tpope/vim-rails.git' 					"vim-rails
Plugin 'Shougo/neocomplcache.vim'			"newconplcadhe
Plugin 'othree/html5.vim' 						"html.vim
Plugin 'scrooloose/nerdcommenter' 						"html.vim
Plugin 'ervandew/supertab' 						"supertab
Plugin 'git://github.com/hhff/SpacegrayEighties.vim.git'            "安裝spacegrey




call vundle#end()            " required
filetype plugin indent on    " required

"設定neocomplcache 自動啟動
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_quick_match = 1 
"let g:NeoComplCache_DisableAutoComplete = 1

"設定supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>" 

"啟動語法高亮
syntax on
filetype plugin indent on

" Always show statusline
 set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colors
 set t_Co=256
 set background=dark
 colorscheme SpacegrayEighties

"change vim-powerline esc delay time
 set timeoutlen=1000 ttimeoutlen=0

"設定tab的寬度
 set tabstop=2
 set shiftwidth=2

"設定emmet 快速擴展的快捷為tab
let g:user_emmet_expandabbr_key = '<c-e>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"設定snipmate，同檔案內複數型態的snippet樣板
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'


"設定emmet只有在html, css下啟動
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"設定Q為q!
:command Q q!

"設定nerdtree觸發條件
map <C-j> :NERDTreeToggle<CR>

"設定ctrl p查找資料
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'

"設定snipmate在ruby環境下觸發的條件
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'

"顯示行數
set nu

"vim 色彩
"colorscheme orz 

"設定翻頁快速鍵
:nmap <Space> <PageDown>

"設定縮排
:nmap <tab> >>
:nmap <s-tab> <<

"設定 - 為移動到行尾
:nmap - $
:vmap - $

"設定ctrl p的快速鍵是按兩下,
:nmap ,, <c-p>

"設定 :html 為:setfiletype html
:command Html setfiletype html
:command Css setfiletype css 

