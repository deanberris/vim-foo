set nocompatible
filetype on
filetype off

execute pathogen#infect()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'SirVer/ultisnips'

set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set equalalways
set number

filetype plugin indent on
syntax on

if has("gui_running")
    set guioptions-=T
    :colorscheme pablo
else
    :colorscheme torte
end

" Window Bindings
noremap <Leader>s :w<CR>
noremap <C-C> <C-W>c
noremap <Leader>f :FufFile<CR>

" Compiler Bindings
noremap <Leader>bb :make<CR>
noremap <Leader>bn :cn<CR>
noremap <Leader>bp :cp<CR>

" NERDTree
noremap <C-n> :NERDTreeToggle<CR>

let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
let NERDTreeWinSize=50
let NERDTreeWinPos="right"
let NERDTreeQuitOnOpen=1

" Clang-format
map <C-Y> :pyf ~/.vim/clang-format.py<CR>
imap <C-Y> <ESC>:pyf ~/.vim/clang-format.py<CR>i

" Syntastic
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=1
