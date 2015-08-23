
" ignore backupfiles
set nobackup
set nowritebackup
set noswapfile

" see the end of lines 
set textwidth=80
" red line on 80 char
"set colorcolumn=+1

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

filetype indent on
filetype on
filetype plugin on

set number
set nu
syntax on
syntax enable 
set background=dark

hi TabLineFill ctermfg=DarkGreen ctermbg=DarkGreen
hi TabLine ctermfg=Black ctermbg=DarkGreen
hi TabLineSel ctermfg=Grey ctermbg=Black

" set window size
set lines=57 columns=110

colorscheme jellybeans


" set spellchecker for text file on 

au BufNewFile,BufRead,BufEnter   *.rst     setlocal spell    spelllang=de_ch
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_ch
au BufNewFile,BufRead,BufEnter   *.tex     setlocal spell    spelllang=de_ch
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=de_ch
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_ch
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en_us


" run python code with hit F5
nnoremap <silent> <F5> :!clear;python %<CR>


" ramap <ESC> to <Tab>

inoremap <Tab> <Esc>
vnoremap <Tab> <Esc>


" automatic underline for rst dokuments
" Underline the current line with equal sign for Title in normal mode
nnoremap <F7> yyp<c-v>$r=
"
" Underline the current line with equal sign for Title in insert mode
inoremap <F7> <Esc>yyp<c-v>$r=A

" Underline the current line with dash for section normal mode
nnoremap <F8> yyp<c-v>$r-
"
" Underline the current line with dash for section in insert mode
inoremap <F8> <Esc>yyp<c-v>$r-A

" Underline the current line with back quote for subsection normal mode
nnoremap <F9> yyp<c-v>$r^
"
" Underline the current line with back quote for subsection in insert mode
inoremap <F9> <Esc>yyp<c-v>$r^A

