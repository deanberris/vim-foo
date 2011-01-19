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
noremap <C-H> <C-w>h
noremap <C-L> <C-w>l
noremap <C-J> <C-W>j<C-W>_<ESC>
noremap <C-K> <C-W>k<C-W>_<ESC>
noremap <Leader>s :w<CR>
noremap <C-C> <C-W>c
noremap <C-m> <C-W><Bar>
noremap <Leader>f :FufFile<CR>
noremap <C-x> :q!<CR>

" Compiler Bindings
:noremap <C-F10> :make<CR>
:noremap <F3> :cp<CR>
:noremap <F4> :cn<CR>

" NERDTree
:noremap <C-n> :NERDTreeToggle<CR>

let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
let NERDTreeWinSize=50
let NERDTreeWinPos="right"
let NERDTreeQuitOnOpen=1
let g:snips_author="Dean Michael Berris &lt;mikhailberis@gmail.com&gt;"

" Folding
set foldmethod=syntax
set number

