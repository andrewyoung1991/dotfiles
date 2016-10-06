set nocompatible
filetype off

" get vundle {{{
let install_bundles=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let install_bundles=1
endif
set rtp+=~/.vim/bundle/vundle
" }}}

" bundles {{{
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
call vundle#end()
" }}}

" general {{{
syntax on
filetype plugin on
set background=dark
colorscheme blue

set encoding=utf-8
set number
set relativenumber

set nobackup
set nowritebackup
set noswapfile

set ignorecase
set smartcase

set cursorline
set ruler

set showcmd
set showmatch
set mat=2

set wildignore+=*.pyc,*.o,*.obj,.git,*.egg/**,*.min.js,*.so,*egg-info*/**,*.jpg,*.png,*.gif,*.ico

set textwidth=80
set cc=+1
set wrap

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
" }}}

" mappings {{{
map , <leader>
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>

" fuck shift
nnoremap ; :
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" }}}

" syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pycodestyle', 'mypy']
" }}}
