lua << END
  --Enable (broadcasting) snippet capability for completion
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.html.setup{
    capabilities = capabilities,
  }
  require'lspconfig'.cssls.setup {
    capabilities = capabilities,
  }
  require'lspconfig'.vuels.setup{}
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.pyright.setup{}
  require'lspconfig'.rust_analyzer.setup{}

  require'lspconfig'.jdtls.setup{}

  local saga = require 'lspsaga'
  saga.init_lsp_saga()
END

nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>q <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>w <cmd>lua vim.lsp.buf.incoming_calls()<CR>

nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent>gh :Lspsaga lsp_finder<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

set completeopt=menuone,noinsert,noselect
set shortmess+=c

autocmd BufEnter * lua require'completion'.on_attach()
