source $HOME/.config/nvim/plugins/plugins.vim

nnoremap ; :
nnoremap : ;
nnoremap <SPACE> <Nop>
let mapleader = " "
let maplocalleader = " "
let g:python3_host_prog='/usr/bin/python'

nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-Q> :x<CR>
nnoremap <C-c> <Esc>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

vnoremap < <gv
vnoremap > >gv

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let test#strategy = "dispatch"
nnoremap <silent> t<C-n> :TestNearest<CR>
nnoremap <silent> t<C-f> :TestFile<CR>
nnoremap <silent> t<C-s> :TestSuite<CR>
nnoremap <silent> t<C-l> :TestLast<CR>
nnoremap <silent> t<C-g> :TestVisit<CR>

lua <<EOF
  require('status')
EOF

nnoremap <silent> <a-1> 1gt<cr>
nnoremap <silent> <a-2> 2gt<cr>
nnoremap <silent> <a-3> 3gt<cr>
nnoremap <silent> <a-4> 4gt<cr>
nnoremap <silent> <a-5> 5gt<cr>
nnoremap <silent> <a-6> 6gt<cr>

lua require('github-theme').setup()
