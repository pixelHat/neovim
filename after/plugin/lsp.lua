local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true })

local servers = {
	"tsserver",
	"cssls",
	"html",
	"angularls",
	"rust_analyzer",
	"pyright",
	"astro",
	"lua_ls",
	"hls",
	"svelte",
}

local util = require("lspconfig.util")

local lspconfig = require("lspconfig")
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({})
lspconfig.golangci_lint_ls.setup({})
lspconfig.gopls.setup({})
lspconfig.volar.setup({})
lspconfig.solargraph.setup({
	completion = true,
})
lspconfig.ccls.setup({})
lspconfig.rust_analyzer.setup({
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		["rust-analyzer"] = {},
	},
})

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	-- Use a function to dynamically turn signs off
-- 	-- and on, using buffer local variables
-- 	signs = function(namespace, bufnr)
-- 		local ab = vim.diagnostic.get(bufnr)
-- 		for key, value in pairs(ab) do
-- 			for key2, value2 in pairs(value) do
-- 				print(key2, value2)
-- 			end
-- 		end
-- 	end,
-- })
