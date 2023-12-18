scriptencoding utf-8
colorscheme maruvi
"colorscheme tslate
"colorscheme tama1
"colorscheme tdesert
"colorscheme stripe
"colorscheme desert
"colorscheme solarized
"colorscheme pablo
"colorscheme slate
"highlight Cursor guifg=#000000 guibg=#7cfc00
"highlight Cursorline guifg=#000000 guibg=#ffffff
set guifont=ＤＦ隷書体:h14
"set guifont=HG教科書体:h11
set printfont=ＤＦ隷書体:h9:cSHIFTJIS
"set printfont=HG教科書体:h9:cSHIFTJIS
"set guifont=Corbel:h11
"set guifont=Osaka-Mono
"set guifont=DFLeiSho-SB-WIN-RKSJ-HRegular:h14
"DFLeiSho-SB-WIN-RKSJ-H
"DFLis6.TTC
"DFPLeiShoJ2-SB
"DFLeiSho-SB
"DFLeiSho-SB-WIN-RKSJ-HRegular
set linespace=2

"au BufNewFile,BUfRead *.vb                      setf vb
"autocmd BufNewFile,BufNewFile *.bas set filetype=vb
"autocmd BufNewFile,BufNewFile *.cm  set filetype=mcs
autocmd BufNewFile,BufNewFile *.bas set filetype=vbnet
"autocmd BufNewFile,BufNewFile *.frm set filetype=vbnet

"Windowsの場合コンソール版では漢字入力不可になるのでgvimだけにしておいた方がよいかもしれません。(2012.02.21) 
"if has('gui_running') && !has('unix')
"	set encoding=utf-8
"endif

"_vimrc(.vimrc)で内部エンコーディングを変更した後は scriptencodingで 設定ファイル自体のエンコーディングを指定しておいた方が問題が起きにくくなります。(2012.02.21)
"set encoding=utf-8
".vimrc(_vimrc)がcp932の場合
"scriptencoding cp932

"改行をあまり目立たないように
"hi NonText guifg=#444444
"hi SpecialKey guifg=#444444

"highlight Comment guifg=#11f0c3 guibg=#ff00ff
"highlight Comment guifg=#517dd6 guibg=#101010
"highlight hlsearch guifg=#ffdab9 guibg=#101010


"   :hi Comment	term=bold ctermfg=Cyan guifg=#80a0ff gui=bold


"https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-color#color-ime
"".gvimrc カラー設定
""カラー設定した後にCursorIMを定義する方法
"colorscheme mycolor
"
"if has('multi_byte_ime')
"  highlight Cursor guifg=NONE guibg=Green
"  highlight CursorIM guifg=NONE guibg=Purple
"endif
"
