" vim color file(2023.04.16)
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif
let g:colors_name="maruvi_colors"

" highlight groups -----------------------------------------------------------
highlight Normal         guibg=#000000     guifg=#cccccc
highlight Cursor         guibg=#ee82ee
"ighlight CursorIM
highlight CursorColumn   guibg=grey20
highlight CursorLine     guibg=#000000
highlight CursorLineNr   guibg=#d2691e     guifg=#000000
highlight CursorLineSign guibg=#d2691e     guifg=#888888
"ighlight Directory
"ighlight DiffAdd
"ighlight DiffChange
"ighlight DiffDelete
"ighlight DiffText
highlight ErrorMsg       guibg=#222222     guifg=#d2691e
highlight VertSplit      guibg=#262626     guifg=#87cefa     gui=none
highlight Folded         guibg=#111111     guifg=#b0c4de
highlight FoldColumn     guibg=#000000     guifg=#b0c4de
highlight SignColumn     guibg=#000000     guifg=#ffffff
highlight IncSearch      guibg=khaki       guifg=#000000
highlight LineNr         guibg=#000000     guifg=#333333
highlight ModeMsg                          guifg=goldenrod
highlight MoreMsg                          guifg=SeaGreen
highlight NonText                          guifg=#8b4513
highlight Question                         guifg=springgreen
highlight Search         guibg=#8b4513     guifg=#ffffff
highlight SpecialKey                       guifg=#bdb76b     gui=none
highlight StatusLine     guibg=#d2691e     guifg=#000000     gui=none
highlight StatusLineNC   guibg=#222222     guifg=#d2691e     gui=none
highlight Title                            guifg=indianred
highlight Visual         guibg=#6b8e23     guifg=#000000
"ighlight Visual         guibg=#ba55d3                       gui=reverse
"ighlight VisualNOS
highlight WarningMsg                       guifg=salmon
"ighlight WildMenu
"ighlight Menu
"ighlight Scrollbar
"ighlight Tooltip
highlight Pmenu          guibg=#222222     guifg=#ffffff
highlight PmenuSel       guibg=#555555     guifg=yellow
"ighlight PmenuSbar      guibg=#111111     guifg=#000099
"ighlight PmenuThumb                       guifg=#777777

" custom --------------------------------------
highlight User1          guibg=#222222     guifg=#777777     gui=none
highlight User2          guibg=#9400d3     guifg=white
highlight MatchParen     guibg=#ffd700     guifg=#000000

" syntax highlighting groups
highlight Comment                          guifg=#888888     gui=none
highlight Constant                         guifg=#ffff00     gui=underline
highlight string                           guifg=#3cb371     gui=undercurl
highlight Character                        guifg=#ffff00     gui=none
highlight Number                           guifg=#3cb371     gui=underline
highlight Boolean                          guifg=#ff0000     gui=none
highlight Float                            guifg=#ee82ee     gui=underline
highlight Identifier                       guifg=#ffd700
highlight Function                         guifg=#f4a460
highlight Statement                        guifg=#afeeee     gui=none
highlight Conditional                      guifg=#cd853f
highlight Repeat                           guifg=#ff8c00     gui=none
highlight Label                            guifg=#98fb98
highlight Operator                         guifg=#7cfc00
"ighlight Keyword
"ighlight Exception
highlight PreProc                          guifg=indianred
"ighlight Include
"ighlight Define
"ighlight macro
"ighlight PreCondit
highlight Type                             guifg=#b8860b     gui=none
"ighlight StorageClass
"ighlight Structure
"ighlight Typedef
highlight Special                          guifg=#7cfc00
"ighlight SpecialChar
"ighlight Tag
"ighlight Delimiter
"ighlight SpecialComment
"ighlight Debug
"ighlight Underlined
highlight Ignore                           guifg=grey40
highlight Error          guibg=#111111     guifg=#ff0000     gui=none
highlight Todo           guibg=#8b008b     guifg=#f8f8ff

" color terminal definitions
highlight SpecialKey                       ctermfg=darkgreen
highlight NonText                          ctermfg=darkblue  cterm=bold
highlight Directory                        ctermfg=darkcyan
highlight ErrorMsg       ctermbg=1         ctermfg=7         cterm=bold
highlight IncSearch      ctermbg=green     ctermfg=yellow    cterm=NONE
highlight Search         ctermbg=blue      ctermfg=grey      cterm=NONE
highlight MoreMsg                          ctermfg=darkgreen
highlight ModeMsg                          ctermfg=brown     cterm=NONE
highlight LineNr                           ctermfg=3
highlight Question                         ctermfg=green
highlight StatusLine                                         cterm=bold,reverse
highlight StatusLineNC                                       cterm=reverse
highlight VertSplit                                          cterm=reverse
highlight Title                            ctermfg=5
highlight Visual                                             cterm=reverse
highlight VisualNOS                                          cterm=bold,underline
highlight WarningMsg                       ctermfg=1
highlight WildMenu       ctermbg=3         ctermfg=0
highlight Folded         ctermbg=NONE      ctermfg=darkgrey
highlight FoldColumn     ctermbg=NONE      ctermfg=darkgrey
highlight DiffAdd        ctermbg=4
highlight DiffChange     ctermbg=5
highlight DiffDelete     ctermbg=6         ctermfg=4         cterm=bold
highlight DiffText       ctermbg=1                           cterm=bold
highlight Comment                          ctermfg=darkcyan
highlight Constant                         ctermfg=brown
highlight Special                          ctermfg=5
highlight Identifier                       ctermfg=6
highlight Statement                        ctermfg=3
highlight PreProc                          ctermfg=5
highlight Type                             ctermfg=2
highlight Underlined                       ctermfg=5         cterm=underline
highlight Ignore                           ctermfg=7         cterm=bold
highlight Ignore                           ctermfg=darkgrey
highlight Error          ctermbg=1         ctermfg=7         cterm=bold

"-----------------------------------------------------------------------------
" stripe color for background
"-----------------------------------------------------------------------------
highlight EvenLbg ctermbg=235 guibg=#111111
let g:stripe_config = {"group_odd" : "EvenLbg"}

"vim: sw=4
