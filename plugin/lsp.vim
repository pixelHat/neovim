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
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.angularls.setup{}
  require'lspconfig'.vuels.setup{}
  require'lspconfig'.pyright.setup{}
  require'lspconfig'.rust_analyzer.setup{}


  local saga = require 'lspsaga'
  saga.init_lsp_saga({
    finder_action_keys = {
       open = 'o', vsplit = 'v',split = 'x',quit = 'q',scroll_down = '<C-n>', scroll_up = '<C-p>' -- quit can be a table
    }
  })
END

nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>

nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent>gh <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent><leader>q <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

