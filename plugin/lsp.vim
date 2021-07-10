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
" nnoremap <leader>w <cmd>lua vim.lsp.buf.incoming_calls()<CR>

nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent>gh :Lspsaga lsp_finder<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'buffers', 'snippet', 'ts']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]

set completeopt=menuone,noselect

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
