map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> :tabp<cr>
map <C-L> :tabn<cr>
map <C-n> :tabe<cr>

map <C-D> :!php --rf <cword><cr>
:autocmd FileType php noremap <C-O> :!php -l %<CR>
:autocmd FileType php noremap <C-P> :w!<CR>:!php %<CR>
setlocal omnifunc=syntaxcomplete#Complete
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone,preview
set cot+=menuone
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
set backspace=indent,eol,start
set autoindent
set encoding=utf-8
syntax on
set runtimepath+=~/.vim/
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set title
set wildmenu
set tags=./tags;../../../../

let g:netrw_liststyle=3
let g:netrw_altv=1

set ignorecase
set smartcase

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

 " Highlight search terms...
 set hlsearch
 set incsearch " ...dynamically as they are typed.

vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

colorscheme desert

imap jk <ESC>
set pastetoggle=<F2>

set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
set history=200
set nocompatible

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" create dir on save , use :W
function WriteCreatingDirs()
    execute ':silent !mkdir -p %:h'
    write
endfunction
command W call WriteCreatingDirs()

execute pathogen#infect()

