local wk = require("which-key")

local nmap = function(key, effect)
	vim.keymap.set("n", key, effect, { silent = true, noremap = true })
end

local vmap = function(key, effect)
	vim.keymap.set("v", key, effect, { silent = true, noremap = true })
end

local imap = function(key, effect)
	vim.keymap.set("i", key, effect, { silent = true, noremap = true })
end

local cmap = function(key, effect)
	vim.keymap.set("c", key, effect, { silent = true, noremap = true })
end

-- center after search and jumps
nmap("n", "nzz")
nmap("<c-d>", "<c-d>zz")
nmap("<c-u>", "<c-u>zz")
nmap("H", "<cmd>tabprevious<cr>")
nmap("L", "<cmd>tabnext<cr>")

nmap("<space><space>x", "<cmd>source %<CR>")

nmap(";", ":")
nmap(":", ";")

nmap("<M-j>", ":resize -2<CR>")
nmap("<M-k>", ":resize +2<CR>")
nmap("<M-h>", ":vertical resize -2<CR>")
nmap("<M-l>", ":vertical resize +2<CR>")

nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-h>", "<C-w>h")
nmap("<C-l>", "<C-w>l")

wk.add({
	{
		mode = { "n" },
		{ "<leader>g", group = "ChatGPT" },
	},
	{
		mode = { "n", "v" },
		{ "<leader>ga", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
		{ "<leader>ge", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instructions" },
		{ "<leader>gc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
		{ "<leader>gd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring", group = "ChatGPT" },
		{ "<leader>ge", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
		{ "<leader>gf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
		{ "<leader>gg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
		{ "<leader>gk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
		{ "<leader>gl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
		{ "<leader>go", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
		{ "<leader>gr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
		{ "<leader>gs", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
		{ "<leader>gt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
		{ "<leader>gx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
	},
})
