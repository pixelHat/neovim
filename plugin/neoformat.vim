let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_python = ['black', 'isort']
let g:neoformat_enabled_lua = ['luafmt']
let g:neoformat_enabled_rust = ['rustfmt']

let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_vue = ['prettier']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
