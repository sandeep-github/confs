syntax on
set history=500
set nu

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full
" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd
" have the mouse enabled all the time:
set mouse=r
"set mouse=a

" show matching braces
set showmatch
" Extends Matching pairs
set matchpairs+=<:>
set matchpairs+==:;
" save file to swap file after each 10 char insertion
" default value is 200 chars
set updatecount=50

" highlight the current column
"set cursorcolumn
" highlight the current line
set cursorline
"set ruler

" highlight search text
set hls

set wildmenu
set cindent
set hlsearch
"set expandtab
set autoindent
set shiftround
set smartindent

"set softtabstop=4
"set shiftwidth=4
"set columns=80
"set tabstop=4

" enable filetype detection:
filetype on
" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent
" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro
" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent
" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
"autocmd FileType make set noexpandtab shiftwidth=8
" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
" show the `best match so far' as search strings are typed:
set incsearch
" open current dir browser
map ,e :e <C-R>=expand("%:p:h") . "/"<CR>

" open alternate file
map <c-p> :e#<cr>

"in insert mode <c-i> implies write to file
imap <C-i> <esc>:w<cr>i

"in insert mode <c-u> implies quit file forcefully
imap <C-u> <space><space><space><space>

" reduced window move operation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-i> <C-w>=

" interpret command WQ, Wq as wq ( to avoid type mismatch
command! WQ wq
command! Wq wq

map <space>t :TagbarToggle<cr><cr>
map <space>a ::TlistToggle<cr><cr>
map <space>e :NERDTreeToggle<cr>
map <space>w :w<cr>

" close the current window
map <space>c :q!<cr>
map <space>C :q!<cr>

" duplicate current window
map <space>e :NERDTreeToggle<cr>
map <space>v :vsplit<cr>
map <space>V :vsplit<cr>
map <space>h :split<cr>
map <space>H :Hexplore<cr>

" open new window with no filename
map <space>n :vnew<cr>
map <space>N :new<cr>

" duplicate current window
map <space>; :set cursorcolumn<cr>
map <space>' :set nocursorcolumn<cr>

" function that create folds according to syntax
func! HideAll()
    syn region myFolj start="{" end="}" transparent fold
    syn sync fromstart
    set foldnestmax=5000
    set foldmethod=syntax
endfunc
call  HideAll()


"Set the maximum number width. Useful when "set number" is used
set numberwidth=5

hi Search ctermbg=DarkGray ctermfg=Blue
hi Folded ctermbg=DarkGray ctermfg=Blue

function! Komment()
    if getline(".") =~ '\/\*'
        let hls=@/
        s/^\/\*//
        s/*\/$//
        let @/=hls
    else
        let hls=@/
        s/^/\/*/
        s/$/*\//
        let @/=hls
        endif
endfunction
map <space>` :call Komment()<CR>

"Set the maximum number width. Useful when "set number" is used
set numberwidth=5

" Cursor column settings
highlight CursorColumn term=bold,underline cterm=bold,underline ctermfg=2 ctermbg=black guibg=Grey90

" left margin number setting when "set nu"
highlight LineNr ctermfg=DarkGray


" Invoke man command for the keywork under cursor while pressing K eg. if "ls"
" is under cursor then it will invoke man page of ls command. If you press 7K
" then it will invoke "man 7 ls"
set keywordprg=man

" coding standard of 80 characters per line
" Mark text above 80 column by red mark
match ErrorMsg /\%>80v.\+/

" set dark background
set background=dark

" aligns line with =
vmap <C-i> ! perl  /home/sandeep/.bins/vi_align_pearl -c= <CR>

highlight ExtraWhitespace ctermbg=gray guibg=green
" Show trailing whitespace:
"match ExtraWhitespace /\s\+$/
"match trailing whitespace, except when typing at the end of a line
match ExtraWhitespace /\s\+\%#\@<!$/

" remove all the trailing white spaces
nnoremap <Leader>f :%s/\s\+$//<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp ::tabprevious<CR>

filetype plugin indent on
set virtualedit=all

" highlight search
let g:MultipleSearchMaxColors=8
map <space>s :Search <C-R>=expand("<cword>")<CR><CR>
map <space>S :SearchReset <CR><CR>

set shiftwidth=4

map <space>b :ConqueTermSplit bash<CR>
map <space>B :ConqueTermVSplit bash<CR>


" function that toggle comment highlight
let g:cMntFlag = 1
func! Cment()
    if g:cMntFlag != 0
	highlight Comment ctermfg=0 guifg=bg
        let g:cMntFlag = 0
    else
	highlight Comment term=bold cterm=bold ctermfg=6 guifg=#80a0ff
        let g:cMntFlag = 1
    endif
endfunc
call Cment()
map <space>q :call Cment()<CR>

" matchit plugin ==> match xml,html,latex tags. It also support few other
" langualge like pascal, shell, csh etc


" surround plugin ==> effective for tag based editing like in xml, html etc.
" 1) Change current surrounding char by another char or tag
" eg. change single quote by double quote press cs"'
" ("Hello world" => 'hello wordl')
" eg. change double quote by head tag in html press press cs"<head>
" ("Hello world" => <head>hello wordl</head>)
" 2) Change current tag to any char (surrounding)
" eg. change head tag to round braces press cst(
" (<head>Hello wordl</head> ==> (Hello world))
" 3) To delete current surrounding char press ds" Here " is surrounding char
 " 4) To delete current surrounding tag press dst
