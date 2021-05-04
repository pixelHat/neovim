let g:deoplete#enable_at_startup = 1

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_completion_enabled = 0

let test#strategy = "dispatch"
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})


