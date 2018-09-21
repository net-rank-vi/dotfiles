"-----------
"  Vundle
"-----------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-lucius colour scheme
Plugin 'jonathanfilip/vim-lucius'

" L9 <- No one really knows
Plugin 'L9'

" ctrlp full path fuzzy search
Plugin 'kien/ctrlp.vim'

" Rails plugin for syntax highlighting and shortkeys
Plugin 'tpope/vim-rails'

" Ag search - more powerful Ack search
Plugin 'rking/ag.vim'

" Toggle between absolute and relative numbers
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" SuperTab - Autocompletion
Plugin 'ervandew/supertab'

" Auto-indenting for python
Plugin 'hynek/vim-python-pep8-indent'

" All plugins need to be listed before this line
call vundle#end()

"----------
" Personal
"----------

" Syntax highlighting
syntax on

" Auto indent for all files
filetype plugin indent on

" Strips trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Enable ruler at the bottom to show line number, column number, virtual
" column number and relative position
set ruler

" Highlights the current line and column
set cursorline cursorcolumn

" Allows backspacing over everything in insert mode
set backspace=indent,eol,start

" Changes the number of spaces based on the file type
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

autocmd FileType python setlocal ts=4 sts=4 sw=4
autocmd FileType yaml setlocal ts=4 sts=4 sw=4
autocmd FileType java setlocal ts=4 sts=4 sw=4

" Uses supertab to autocomplete based on file type
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
au BufNewFile,BufRead *.mako set filetype=html

" Supertab settings
imap <tab> <C-Space>
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SupertabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview

" This auto close preview window if you exit the insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Changes all tabs to spaces
set expandtab

" Displays the line number
set number

" Ignore case when searching, but when capitals are present, it's required
set ignorecase
set smartcase

" Incremental searching - starts searching while you type
set incsearch

" Keep backups and swaps out of working directory
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Highlight search results
set hlsearch

" Set colour column to know when 80 characters are exceeded
set colorcolumn=80

" Set colours used for VIM to be all 256
set t_Co=256

" Lucius colour settings
colorscheme lucius
LuciusDarkHighContrast

" Set colurs for the cursor indicators and the column
hi CursorLine   cterm=None  ctermbg=234   guibg=#1c1c1c
hi CursorColumn cterm=NONE  ctermbg=234   guibg=#1c1c1c
hi ColorColumn  cterm=NONE  ctermbg=234   guibg=#1c1c1c

" Save with \w
imap <Leader>w <ESC>:w<CR>
nmap <Leader>w <ESC>:w<CR>

" Quit with \q
imap <Leader>q <ESC>:q<CR>
nmap <Leader>q <ESC>:q<CR>
