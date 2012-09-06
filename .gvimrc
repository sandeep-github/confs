" gvim specific
"colorscheme darkZ
colorscheme blacksea
set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 10
set guioptions-=T " hide toolbar
set guioptions-=m " hide menubar
set guioptions-=L " hide left scrollbar
set guioptions-=r " hide right scrollbar

"set winheight=999
"set winwidth=1200
"if has("gui_running")
   " GUI is running or is about to start.
   " Maximize gvim window.
   set lines=100 columns=900
"endif

highlight LineNr  term=underline ctermfg=14 guifg=DarkGray
