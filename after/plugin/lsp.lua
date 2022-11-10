local lspconfig = require "lspconfig"
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

function basic_maps()
    vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_next()<CR>", {noremap = true})
    vim.api.nvim_set_keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {noremap = true})
end

local servers = {
    "tsserver",
    "cssls",
    "html",
    "angularls",
    "rust_analyzer",
    "pyright",
    "vuels",
    "csharp_ls"
}
for _, server in pairs(servers) do
    lspconfig[server].setup {
        capabilities = capabilities,
        on_attach = function()
            basic_maps()
        end
    }
end
