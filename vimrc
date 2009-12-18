set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set winminheight=0
set winminwidth=1
filetype plugin on

if has("gui_running")
    set guioptions-=T
    colorscheme pablo
else
    colorscheme slate
end

" Window Bindings
noremap <C-H> <C-w>h:vertical resize<CR>
noremap <C-L> <C-w>l:vertical resize<CR>
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_
noremap <C-s> :w<CR>
noremap <C-V> :vsplit<CR>
noremap <C-C> <C-W>c

" Compiler Bindings
:noremap <C-F10> :make<CR>

" NERDTree
:noremap <C-n> :NERDTreeToggle<CR>:vertical resize 30<CR>

let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1

