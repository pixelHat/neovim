let g:ale_linters_explicit = 1

let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}

let g:ale_linters = {
\  'python': ['pyright'],
\  'rust': ['analyzer'],
\  'javascript': ['eslint', 'tsserver'],
\  'typescript': ['eslint', 'tsserver'],
\  'vue': ['eslint', 'vls']
\}
