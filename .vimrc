scriptencoding utf-8
" option set -----------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on
set nocompatible
set tags=~/.tags
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set nowrap
au GUIEnter * simalt ~x
set wrapscan
set display=lastline
set scrolloff=0
"set scrolloff=2
"set scrolloff=9999
set showcmd
set title
set list
set nobackup
set noswapfile
set cursorline
set signcolumn=auto
"et cursorlineopt=number,screenline
set cursorcolumn
set nonumber
set norelativenumber
set numberwidth=2
"set listchars=tab:>-,eol:<,trail:\|
"set listchars=tab:>-,eol:<,trail:-
set listchars=tab:>-,extends:<,trail:-,eol:<
set guicursor=a:blinkon0
set virtualedit=all
set history=100
set wildmenu
set showtabline=1
" 特殊文字を全角表示(2023.09.06(水))
set ambiwidth=double

" 
set statusline=[%n]%t\ %M\ %1*%=%<%l/%L(%p%%):%c%V\ [%{&fileencoding}]%*
" set statusline=[%n]\ %t%M%=%<%l/%L(%p%%):%c%V\ [%{&fileencoding}]
" set statusline=[%n]\ %t%M%=%<%l/%L(%p%%):%c%V\ [%{&fileencoding}]%y
" set statusline=%n%y%t%M%=Line:%l/%L(%p%%)\ Column:%c%V\ 
" set statusline+=[%{&fileencoding}]

set nrformats-=octal
set ignorecase
set laststatus=2
set diffopt=filler,context:0
set dictionary="C:\user\acr002\vimfiles\dict\VB6.dict"
autocmd QuickFixCmdPost *grep* cwindow
" set runtimepath+="C:\user\acr002\vimfiles\JpFormat.vim-master"
set runtimepath+="C:\Users\sfc001\vimfiles\doc\doc_help9"
set formatexpr=jpfmt#formatexpr()
let jpfmt_paragraph_regexp = '^[　「]'
set noundofile
set printoptions=top:10mm,left:15mm,right:5mm,bottom:10mm,number:y
set printheader=[\ %F\ ]%=%{strftime('Date:%Y.%m.%d\ %H:%M')}(Page\ %N\ of\ %{line('$')/85+1})
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
let g:netrw_liststyle= 3
let g:netrw_list_hide = 'CVS,\(^\|\s\s)\zs\.\s\+'
let g:netrw_altv = 1
let g:netrw_alto = 1
let autodate_keyword_pre  = '\c[date:'
let autodate_keyword_post = '\]'
let autodate_format="%Y.%m.%d"
set foldcolumn=0
set foldlevel=1
"set foldtext=lines[v:foldend-v:foldstart+1v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
set foldmethod=manual
"set foldmethod=indent
"set foldmethod=syntax
"set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
set nofixendofline
"set noeol
set showmatch
set matchpairs+=<:>,「:」,（:）
set hlsearch
set helplang=ja,en

" テキスト挿入中の自動折り返しを日本語に対応させる(from kaoriya)
set formatoptions+=mM

" モードライン ファイルごとの設定
set modeline
set modelines=1

" 検索数の表示
set shortmess-=S

" BackSpaceの設定
set backspace=indent,eol,start

"set iskeyword+=-
"set iskeyword+=.
"set iskeyword+=(
"set iskeyword+=)
"set iskeyword+=,
" windows "@,48-57,_,128-167,224-235"
" other   "@,48-57,_,192-255"
" @:      isalpha()でtrueが帰るような文字(=a-z,A-Zとアクセント)
" 48-57:  ASCIIでの範囲を表し、数字(0-9)
" 128以降:  拡張ASCII。日本人はほぼ使わないらしい。
" @を含める時は   :setlocal iskeyword+=@-@

" syntax ---------------------------------------------------------------------
syntax enable
au BufRead,BufNewFile *.txt set syntax=help
highlight JpSpace cterm=undercurl ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

" zenkaku space --------------------------------------------------------------
scriptencoding utf-8
" scriptencoding cp932
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" short cut tab切り替え-------------------------------------------------------
if v:version >= 700
  nnoremap <C-Tab>   gt
  nnoremap <C-S-Tab> gT
endif

" key map --------------------------------------------------------------------
"https://sites.google.com/site/fudist/Home/vim-nihongo-ban/kaoriya-trouble
"$VIM/plugins/kaoriya/dicwin.vim
let plugin_dicwin_disable    = 1
"nnoremap <C-Tab> :b n
noremap r gr
noremap R gR
noremap gr r
noremap gR R
nnoremap b ge
"nnoremap b gel
nnoremap ge b
nnoremap v <C-v>
nnoremap <C-v> v
nnoremap ` '
nnoremap ' `
map zz ggVG
"nnoremap zz :<C-u>%y*<CR>
"nnoremap zz :<C-u>%*y<CR>
noremap <C-k>k <Nop>
"imap <C-j> <C-o>j
inoremap <C-k> <C-o>k
"inoremap <C-K> <del>
inoremap <C-l> <C-o>l
inoremap <C-o> <C-o>o
"inoremap / _
"inoremap _ /
noremap <SPACE>h 2zH
noremap <SPACE>j 12j
noremap <SPACE>k 12k
noremap <SPACE>l 2zL
nnoremap <C-h> 12h
"nnoremap <C-j> 10j
"nnoremap <C-k> 10k
nnoremap <C-l> 12l
vnoremap <C-h> 12h
vnoremap <C-j> 10j
vnoremap <C-k> 10k
vnoremap <C-l> 12l
vnoremap v $o^o
nnoremap <F3> :<C-u>edit $MYVIMRC<CR>
nnoremap <S-F3> :<C-u>edit $MYGVIMRC<CR>
nnoremap <F4> :<C-u>edit C:\users\acr002\vimfiles\colors\stripe.vim<CR>
map <F5> O*-----------------------------------------------------------[date: ]<CR>*jobcode: *<CR>*jobname: *<CR>*-----------------------------------------------------------------------------<Esc>
nnoremap <S-F5> O'-----------------------------------------------------------[date: ]<CR>Attribute VB_Name = "Module1"<CR>Option Explicit<Esc>
"inoremap <C-F5> <Esc>i<C-r>=strftime("%Y.%m.%d(%a) %H:%M:%S")<CR>
inoremap <F5> <C-r>=strftime("%Y.%m.%d(%a)")<CR>
"inoremap <C-CR> <ESC>jblR
nnoremap <F6> :Calendar<CR>
map <S-F6> Oin:	<CR>out:<CR>--------------------<CR>[schedule]<CR><CR>--------------------<CR>[job]<CR><Esc>gg
nnoremap <F8> :<C-u>colorscheme solarized<CR>
nnoremap <S-F8> :<C-u>colorscheme tdesert<CR>
nnoremap <F9> :<C-u>cd H:\<CR>
"nnoremap <S-F9> :<C-u>cd C:\user\acr002\Desktop<CR>
nnoremap <F11> :<C-u>Vexplore<CR>
nnoremap <S-F11> :<C-u>Texplore<CR>
nmap <C-F5> <ESC>i<C-r>=strftime('%Y.%m.%d %H:%M')<CR><ESC>
"noremap <SPACE>: o<Esc>r'lv48\|r*
"noremap <SPACE>; o<Esc>r'lv78\|r-
noremap <SPACE>: o<Esc>r#lv48\|r*
noremap <SPACE>; o<Esc>r#lv78\|r-
nnoremap <SPACE>s :%s/
" nnoremap <SPACE>n :cnext<CR>
" nnoremap <SPACE>N :cprevious<CR>
nnoremap <SPACE>v :vim // *<CR>
nnoremap <SPACE>i :r! ipconfig/all<CR>
nnoremap <SPACE>f :set guifont=ＤＦ隷書体:h24<CR>
nnoremap <SPACE>F :set guifont=ＤＦ隷書体:h14<CR>
"vmap <SPACE> S
nnoremap ; :
nnoremap : ;
vunmap <C-X>
vnoremap <c-a> <c-a>gv
vnoremap <c-x> <c-x>gv
"vnoremap <SPACE>a :Align As<CR>
vnoremap <SPACE>a :Align 
"vnoremap <space>i g<c-a>gv<c-x>

" augroup FiletypeMap
"   autocmd!
"   autocmd BufNewFile,BufRead *.bat nnoremap <SPACE>r :!"%"
"   autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>r :!ruby "%"
"   autocmd BufNewFile,BufRead *.py nnoremap <SPACE>r :!python %
"   autocmd BufNewFile,BufRead *.pl nnoremap <SPACE>r :!perl %
"   autocmd BUfNewFile,BufRead *.erb inoremap <Bar> <Bar><Bar><LEFT>
"   autocmd BUfNewFile,BufRead *.rb inoremap <C-/> _
"   autocmd BUfNewFile,BufRead *.rb inoremap <Bar> <Bar><Bar><LEFT>
" augroup END
" autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>r :silent !ruby %
" autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>r :!ruby %
" autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>r :!ruby "%:p"

inoremap 「 「」<left>
inoremap 『 『』<left>
inoremap （ （）<left>

"augroup BufEnterFiletypeMap
"  autocmd!
"  autocmd BufNewFile,BufRead *.bat nnoremap <SPACE>r :!"%"
"  autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>r :!ruby "%"
"  autocmd BufNewFile,BufRead *.rb nnoremap <SPACE>b :!"ccruby.bat" "%"
"  autocmd BufNewFile,BufRead *.rb inoremap <Bar> <Bar><Bar><LEFT>
"augroup END

augroup BufEnterFiletypeMap
  autocmd!
  autocmd BufEnter *.bat nnoremap <SPACE>r :!"%"
  autocmd BufEnter *.erb inoremap <Bar> <Bar><Bar><LEFT>
  autocmd BufEnter *.erb inoremap % %%<LEFT>
  autocmd BufEnter *.rb nnoremap <SPACE>r :!ruby "%"
  autocmd BufEnter *.py nnoremap <SPACE>r :!python "%"
  autocmd BufEnter *.rb nnoremap <SPACE>b :!"ccruby.bat" "%"
"  autocmd BufEnter *.rb nnoremap <SPACE>b :!"C:\work\ruby\101_stdin_text\ccruby.bat" "%"
  autocmd BufEnter *.rb inoremap <Bar> <Bar><Bar><LEFT>
augroup END

"for quickhl.vim--------------------------------
"nnoremap <Space>m <Plug>(quickhl-toggle)
"xnoremap <Space>m <Plug>(quickhl-toggle)
"nnoremap <Space>M <Plug>(quickhl-reset)
"xnoremap <Space>M <Plug>(quickhl-reset)
"nmap <Space>j <Plug>(quickhl-match)
" nmap <Space>m <Plug>(quickhl-manual-this)
" xmap <Space>m <Plug>(quickhl-manual-this)
" nmap <Space>M <Plug>(quickhl-manual-reset)
" xmap <Space>M <Plug>(quickhl-manual-reset)
"nnoremap <Space>me :3new<CR>:e C:\work\memo.txt<CR><C-w>j<CR>z2<CR>
"nnoremap <Space>no :botright 2new H:\_tools\documents\acr002\note.txt<CR>
"nnoremap <Space>m :topleft 42vnew H:\_tools\documents\acr002\links.txt<CR>
nnoremap <Space>no :botright 2new C:\work\note.txt<CR>
nnoremap <Space>m :topleft 42vnew C:\work\vim_text\links.txt<CR>
"nnoremap <Space>o Vgf<CR>
"nnoremap <space>o V"oy:botright 2new <c-r>o<bs><cr>
nnoremap <space>o V"oy:topleft 42vnew <c-r>o<bs><cr>
nnoremap <M-Space> :simalt ~<CR>

" map 括弧の補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" nnoremap <Space>m :vnew H:\_tools\documents\acr002\links.txt<CR>
" nnoremap <Space>mail :vnew H:\_tools\documents\acr002\mail.txt<CR>
" nnoremap <Space>bas :vnew H:\_tools\documents\acr002\vim_bas.bas<CR>
" nnoremap <Space>rb :vnew H:\_tools\documents\acr002\vim_rb.rb<CR>

" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp932,euc-jp,sjis
" set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,cp932,euc-jp,sjis,utf-8
set fileformats=dos,unix,mac

" 不確定(fileencodeingsなのでとりあえず使用……) -----------------------------
" set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,cp932,sjis,utf-8
"autocmd InsertEnter,InsertLeave * highlight CursorLine gui=undercurl
"2023.06.19(月) よくわからないものなので、autocmdもコメントアウトしました。
"これ以前にfileencodingsもコメントアウトしていました。

"test-------------------------------------------------------------------------
function! FirstAction()
  normal gg=G
  g/^\s\+'/d
  "s\/mvar\/m_\/g
  "normal /^end<CR>
  "%s/\n\+/
/g
  "%s/Dim/tetete/g
endfunction
nnoremap <Space>ff :call FirstAction()<CR>

function! WorkSpace()
  %s/\s\+$//g
endfunction
nnoremap <Space>ss :call WorkSpace()<CR>

function! Yoshinoya()
  %substitute/\t\+/
/g
  %substitute/\n\+/
/g
  %substitute/^Q/
Q/g
  %substitute/^Ｑ/
Ｑ/g
  %substitute/^①/１．/g
  %substitute/^②/２．/g
  %substitute/^③/３．/g
  %substitute/^④/４．/g
  %substitute/^⑤/５．/g
  %substitute/^⑥/６．/g
  %substitute/^⑦/７．/g
  %substitute/^⑧/８．/g
  %substitute/^⑨/９．/g
  %substitute/^⑩/10．/g
  %substitute/^⑪/11．/g
  %substitute/^⑫/12．/g
  %substitute/^⑬/13．/g
  %substitute/^⑭/14．/g
  %substitute/^⑮/15．/g
  %substitute/^⑯/16．/g
  %substitute/^⑰/17．/g
  %substitute/^⑱/18．/g
  %substitute/^⑲/19．/g
  %substitute/^⑳/20．/g
endfunction
nnoremap <Space>yo :call Yoshinoya()<CR>

" 最後のカーソル位置に移動(香り屋バージョンでは既に設定してあるとのこと
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

" 全バッファを検索範囲にし、結果を表示する。
"command! -nargs=1 Myvimgrep :bufdo vimgrep /<args>/g % | cwindow
"command! -nargs=1 Myvimgrep :bufdo vimgrep //g % | cwindow
"command! -nargs=0 Myvimgrep :bufdo vimgrep //g % | cwindow
"nnoremap <space>g :Myvimgrep
" let mapleader ="\<space>"

" .vim custom(show weather)------------"
let g:open_weather_appid = '0ecac382681baef697c187fb1e8afa96'

