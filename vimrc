set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set winminheight=0
set winheight=50
set winminwidth=1
set winwidth=1
set equalalways
filetype plugin on

if has("gui_running")
    set guioptions-=T
    colorscheme pablo
    set lines=43 columns=240
else
    colorscheme slate
end

" Window Bindings
noremap <C-H> <C-w>h<C-w>|
noremap <C-L> <C-w>l<C-w>|
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_
noremap <C-s> :w<CR>
noremap <C-V> :vsplit<CR>
noremap <C-C> <C-W>c

" Compiler Bindings
:noremap <C-F10> :make<CR>

" NERDTree
:noremap <C-n> :NERDTreeToggle<CR>

let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
let NERDTreeWinSize=50
let NERDTreeWinPos="right"
let NERDTreeQuitOnOpen=1

" Folding
set foldmethod=syntax
set number

