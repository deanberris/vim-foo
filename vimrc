set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set winminheight=0
filetype plugin on

if has("gui_running")
    set guioptions-=T
    colorscheme pablo
else
    colorscheme slate
end

" Window Bindings
:noremap <C-H> <C-w>h
:noremap <C-L> <C-w>l
:noremap <C-J> <C-W>j<C-W>_
:noremap <C-K> <C-W>k<C-W>_
:noremap <C-S> :w<CR>
:noremap <C-V> :vsplit<CR>
:noremap <C-C> <C-W>c

" Compiler Bindings
:noremap <C-F10> :make<CR>

" NERDTree
:noremap <C-n> :NERDTreeToggle<CR>

let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1

