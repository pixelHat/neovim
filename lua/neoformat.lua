local g = vim.g;

g.neoformat_run_all_formatters = 1
g.neoformat_enabled_python = {'black', 'isort'}
g.neoformat_enabled_lua = {'luafmt'}
g.neoformat_enabled_rust = {'rustfmt'}

g.neoformat_enabled_html = {'prettier'}
g.neoformat_enabled_css = {'prettier'}
g.neoformat_enabled_scss = {'prettier'}
g.neoformat_enabled_javascript = {'prettier'}
g.neoformat_enabled_vue = {'prettier'}

local fmt_group = vim.api.nvim_create_augroup('fmt', {clear = true})

vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  {group = augroup, command = 'Neoformat'}
)
