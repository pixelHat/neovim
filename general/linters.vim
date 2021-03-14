let g:ale_linters_explicit = 1

let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_linters = {
\  'python': ['pyright'],
\  'rust': ['analyzer'],
\  'javascript': ['eslint'],
\  'vue': ['eslint', 'vls']
\}
