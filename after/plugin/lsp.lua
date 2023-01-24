local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function basic_maps()
	vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true })
	vim.api.nvim_set_keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true })
end

local servers = {
	"tsserver",
	"cssls",
	"html",
	"angularls",
	"rust_analyzer",
	"pyright",
	"vuels",
	"csharp_ls",
	"astro",
	"sumneko_lua",
	"hls",
	"svelte",
}

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
mason_lspconfig.setup({ ensure_installed = servers, automatic_installation = false })

for _, server in pairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
		on_attach = function()
			basic_maps()
		end,
	})
end

require("lspconfig").sumneko_lua.setup({
	capabilities = capabilities,
	on_attach = function()
		basic_maps()
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "use" },
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

require("formatter").setup({
	logging = false,
	log_level = vim.log.levels.LOG,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, { group = augroup, command = "Format" })
