local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.fsharp = {
	install_info = {
		url = "https://github.com/Nsidorenco/tree-sitter-fsharp",
		branch = "develop",
		files = { "src/scanner.cc", "src/parser.c" },
		generate_requires_npm = true,
		requires_generate_from_grammar = true,
	},
	filetype = "fsharp",
}

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"haskell",
		"typescript",
		"tsx",
		"css",
		"javascript",
		"bash",
		"vue",
		"scss",
		"lua",
		"html",
		"dockerfile",
		"svelte",
	},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["ab"] = "@block.outer",
				["ib"] = "@block.inner",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["ma"] = "@parameter.inner",
				["mc"] = "@class.outer",
				["mf"] = "@function.outer",
				["mb"] = "@statement.outer",
			},
			swap_previous = {
				["mA"] = "@parameter.inner",
				["mC"] = "@class.outer",
				["mF"] = "@function.outer",
				["mB"] = "@statement.outer",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		lsp_interop = {
			enable = true,
			border = "none",
			peek_definition_code = {
				["df"] = "@function.outer",
				["dF"] = "@class.outer",
			},
		},
	},
})

require("nvim-ts-autotag").setup({
	opts = {
		-- Defaults
		enable_close = true, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
		enable_close_on_slash = false, -- Auto close on trailing </
	},
	-- Also override individual filetype configs, these take priority.
	-- Empty by default, useful if one of the "opts" global settings
	-- doesn't work well in a specific filetype
	per_filetype = {
		["html"] = {
			enable_close = false,
		},
	},
})
