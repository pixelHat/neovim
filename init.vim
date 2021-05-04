source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mapping.vim

let g:python3_host_prog='/usr/bin/python'

let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let test#strategy = "dispatch"

au BufWrite * :ALEFix

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

